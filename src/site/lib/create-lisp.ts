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

export async function createLisp(options = {}) {
  const {
    wasmPath = window.location.origin + window.location.pathname, // Find Wasm file at current page URL
    timeout = 0, // Allow infinite loop - TODO: Optional
    step // Optional callback for each step
  } = options

  function handleStep(e) {
    if (e.data.step != null && step) {
      step(e.data.step)
    }
  }

  async function restart() {
    // Initial or after stop

    const lisp = {
      worker: null,
      request: null,
      async eval(code) {
        if (!lisp.worker || !lisp.request) {
          await lisp.restart()
        }

        return await lisp.request.send(
          {
            code,
            wasmPath
          },
          {
            timeout
          }
        )
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
