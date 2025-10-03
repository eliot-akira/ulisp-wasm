import { createLisp } from '../../src/web.ts'

let lisp
const inputResolvers = new Map()

async function handleMessage(e) {

  const { id, data, action, input } = e.data

  // Handle input response from main thread
  if (action === 'input-response') {
    const resolver = inputResolvers.get(id)
    if (resolver) {
      resolver(input)
      inputResolvers.delete(id)
    }
    return
  }

  if (action) {
    console.log('Action', action)
    return
  }

  const { code, wasmPath = '' } = data

  let step = 0

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
      async getInput() {
        // Request input from main thread
        const inputId = `input-${Date.now()}-${Math.random()}`
        self.postMessage({ inputRequest: true, inputId })

        // Wait for response
        return new Promise((resolve) => {
          inputResolvers.set(inputId, resolve)
        })
      }
    })
  }

  // TODO: When eval is in a long loop, the next request does not reach here

  // console.log('Eval', code)
  const result = await lisp.eval(code)
  // console.log('Result', result)

  self.postMessage({ id, result })
}

self.addEventListener('message', function(e) {
  handleMessage(e)
})
