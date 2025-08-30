import { createLisp } from '../../web.ts'

let lisp

async function handleMessage(e) {

  const { id, data, action } = e.data

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
