// import { createLisp } from '../../web.ts'
import LispWorker from './ulisp-worker.ts?worker'

function createWorkerRequest(worker) {
  const requestMap = new Map()
  let sequenceCounter = 0

  function generateRequestId() {
    return `${Date.now()}-${sequenceCounter++}`
  }

  function handleMessage(event) {
    const { id, result, error } = event.data

    // Find the corresponding request
    const request = requestMap.get(id)

    if (!request) return

    clearTimeout(request.timeoutId)
    requestMap.delete(id)

    if (error) {
      request.reject(new Error(error))
    } else {
      request.resolve(result)
    }
  }

  worker.addEventListener('message', handleMessage)

  function send(data, options = {}) {
    const { timeout = 30000 } = options

    return new Promise((resolve, reject) => {
      const requestId = generateRequestId()

      const requestEntry = {
        resolve,
        reject,
        timeoutId:
          timeout <= 0
            ? 0 // No time out
            : setTimeout(() => {
                requestMap.delete(requestId)
                reject(new Error('Request timed out'))
              }, timeout)
      }

      requestMap.set(requestId, requestEntry)

      worker.postMessage({
        id: requestId,
        data: data
      })
    })
  }

  // Cancel a specific request
  function cancel(requestId) {
    const request = requestMap.get(requestId)
    if (request) {
      clearTimeout(request.timeoutId)
      request.reject(new Error('Request cancelled'))
      requestMap.delete(requestId)
    }
  }

  // Cancel all pending requests
  function cancelAll() {
    for (const [id, request] of requestMap) {
      clearTimeout(request.timeoutId)
      request.reject(new Error('All requests cancelled'))
    }
    requestMap.clear()
  }

  // Public API
  return {
    send,
    cancel,
    cancelAll,
    worker // Expose worker for additional configuration if needed
  }
}

export type CreateLispOptions = {
  /**
   * Folder path for Wasm
   */
  wasmPath?: string
  /**
   * Timeout or `0` to allow infinite loop
   */
  timeout?: number
  /**
   * Optional callback for each step
   */
  step?: Function
  /**
   * Read a byte from stream
   * Returns -1 for no input
   */
  readByte?: (streamType: number) => Promise<number>
  /**
   * Write a byte from stream
   */
  writeByte?: (streamType: number, value: number) => Promise<void>
  /**
   * Read a line from console input
   */
  readLine?: () => Promise<string>
  /**
   * Write a line to console out
   */
  print?: (value: string) => void
  /**
   * Write a line to console error
   */
  printError?: (value: string) => void
}

export async function createLisp(options: CreateLispOptions = {}) {
  const {
    wasmPath = window.location.origin + window.location.pathname,
    timeout = 0,
    step,
    readByte,
    writeByte,
    readLine,
    print,
    printError
  } = options

  function handleStep(e) {
    if (e.data.step != null && step) {
      step(e.data.step)
    } else if (e.data.print != null) {
      if (print) {
        print(e.data.print)
      }
    } else if (e.data.printError != null) {
      if (printError) {
        printError(e.data.printError)
      } else if (print) {
        print(e.data.printError)
      }
    } else if (e.data.action) {
      const { requestId: id, action, args = [] } = e.data
      switch (action) {
        // General-purpose stream I/O: readByte, writeByte
        case 'readByte':
          if (!readByte) return
          readByte(...args).then((response) => {
            // Send response back to worker
            e.target.postMessage({
              action: 'response',
              id,
              response
            })
          })
          break
        case 'writeByte':
          if (!writeByte) return
          writeByte(...args)
          break
        // Console I/O: readLine, writeLine, writeLineError
        case 'readLine':
          if (!readLine) return
          readLine(...args).then((response) => {
            // Send response back to worker
            e.target.postMessage({
              action: 'response',
              id,
              response
            })
          })
          break
        // For completeness of interface
        case 'writeLine':
          if (!print) return
          print(...args)
          break
        case 'writeLineError':
          if (!print) return
          printError(...args)
          break
        default:
          // Unknown action
          break
      }
    }
  }

  async function restart() {
    // Initial or after stop

    const lisp = {
      worker: null,
      request: null,
      running: false,
      async eval(code) {
        if (!lisp.worker || !lisp.request || lisp.running) {
          await lisp.restart()
        }

        lisp.running = true

        const result = await lisp.request.send(
          {
            code,
            wasmPath
          },
          {
            timeout
          }
        )
        lisp.running = false

        return result
      },
      async restart() {
        if (lisp.worker) {
          lisp.stop()
        }

        const worker = new LispWorker()
        const request = createWorkerRequest(worker)

        worker.addEventListener('message', handleStep)

        Object.assign(lisp, {
          worker,
          request
        })
      },
      stop() {
        if (!lisp.worker) return // Already stopped

        // Let client clear step
        // handleStep({
        //   data: {
        //     step: 0
        //   }
        // })

        lisp.request.cancelAll()
        lisp.worker.removeEventListener('message', handleStep)
        lisp.worker.terminate()

        lisp.request = null
        lisp.worker = null
      }
    }

    await lisp.restart()

    return lisp
  }

  return await restart()
}
