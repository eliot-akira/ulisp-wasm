import { createLisp } from '../../web/index.ts'

let lisp
const requestResolvers = new Map()

async function handleMessage(e) {
  const { id, data, action, response } = e.data

  // Handle response from main thread
  if (action === 'response') {
    const resolver = requestResolvers.get(id)
    if (resolver) {
      resolver(response)
      requestResolvers.delete(id)
    }
    return
  }

  if (action) {
    console.log('Action', action)

    // TODO: Set user flag to switch output mode, etc.

    return
  }

  const { code, wasmPath = '' } = data

  let step = 0

  /**
   * Send request and wait for response
   */
  function sendRequest<T>(action: string, ...args: any): Promise<T> {

    const requestId = `request-${Date.now()}-${Math.random()}`
    self.postMessage({ requestId, action, args })

    return new Promise((resolve) => {
      requestResolvers.set(requestId, resolve)
    })
  }

  /**
   * Send action with no response expected
   */
  function sendAction(action: string, ...args: any) {
    self.postMessage({ action, args })
  }

  if (!lisp) {
    lisp = await createLisp({
      wasmPath,
      tick() {
        step++
        self.postMessage({ step })
      },
      print(arg: any) {
        self.postMessage({ print: arg })
      },
      printError(arg: any) {
        self.postMessage({ printError: arg })
      },

      readByte(streamType: number) {
        return sendRequest<number>('readByte', streamType)
      },
      readLine() {
        return sendRequest<string>('readLine')
      },
      async writeByte(streamType: number, data: string | number) {
        return sendAction('writeByte', streamType, data)
      },
      async writeLine(data: string) {
        return sendAction('writeLine', data)
      },
      async writeLineError(data: string) {
        return sendAction('writeLineError', data)
      },

    })
  }

  // TODO: When eval is in a long loop, the next request does not reach here

  // console.log('Eval', code)
  const result = await lisp.eval(code)
  // console.log('Result', result)

  self.postMessage({ id, result })
}

self.addEventListener('message', function (e) {
  handleMessage(e)
})
