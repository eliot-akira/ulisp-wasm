import createLispWasmModule from './ulisp.js'
import { lispCreator } from '../node/common.js'

export async function createLisp() {
  /**
   * TODO: Module expects a global variable `ulisp`. Move them as callbacks
   * passed to createLispWasmModule().
   */
  const ulisp = (globalThis.ulisp = {
    // run,
    // Called from Lisp code running on WASM
    call(command, ...args) {
      console.log('ulisp.call', command, ...args)
      switch (command) {
        case 'analogRead':
          return 0
          break
        case 'analogWrite':
          break
        case 'digitalRead':
          return 0
          break
        case 'digitalWrite':
          break
      }
    },
    async delay(duration = 0) {
      return new Promise((resolve, reject) => {
        console.log('delay', duration)
        setTimeout(resolve, parseInt(duration, 10))
      })
    },
    escape() {
      return 0 // Return 1 to stop the runtime
    },
    wait_for_tick() {},
    stop() {}
  })

  return await lispCreator({
    createLispWasmModule
  })

  // eval: evaluate,
  // stop() {
  //   console.log('stop')
  //   Module._stop_loop()
  // },
  // version() {
  //   printBuffer.start()
  //   Module._print_version()
  //   return printBuffer.end()
  // }
}
