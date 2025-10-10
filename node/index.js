import createLispWasmModule from './ulisp.js'
import { dirname } from 'node:path'
import { fileURLToPath } from 'node:url'
import { lispCreator } from './common.js'

export async function createLisp(options = {}) {

  const __dirname = dirname(fileURLToPath(import.meta.url))
  // Emscripten output expects this global
  globalThis.__dirname = __dirname


  /**
   * TODO: Module expects a global variable `ulisp`. Move them as callbacks
   * passed to createLispWasmModule().
   * 
   * @see src/web.ts
   */
  const ulisp = (globalThis.ulisp = {
    // run,
    // Called from Lisp code running on WASM
    call(command, ...args) {
      console.log('ulisp called', command, ...args)
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
        setTimeout(resolve, parseInt(duration, 10))
      })
    },
    escape() {
      return 0 // Return 1 to stop the runtime
    },
    wait_for_tick() {
      // if (tick) return tick()
    },
    stop() {}
  })

  return await lispCreator({
    createLispWasmModule,
    ...options
  })
}
