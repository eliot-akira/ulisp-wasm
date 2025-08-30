import createLispWasmModule from './ulisp.js'
import { lispCreator } from '../node/common.js'

export async function createLisp(moduleArgs = {}) {

  const {
    wasmPath = '',
    tick,
    print
  } = moduleArgs

  /**
   * TODO: Module expects a global variable `ulisp`. Move them as callbacks
   * passed to createLispWasmModule().
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
        console.log('delay', duration)
        setTimeout(resolve, parseInt(duration, 10))
      })
    },
    escape() {
      return 0 // Return 1 to stop the runtime
    },
    wait_for_tick() {
      if (tick) return tick()
    },
    stop() {},
    // print(arg) {
    //   if (print) print(arg)
    // },
  })

  return await lispCreator({
    print,
    createLispWasmModule(args = {}) {
      return createLispWasmModule({
        ...args,
      locateFile(path, scriptPath) {
        // scriptPath points to source during development
        // console.log('path', wasmPath + path)
        return wasmPath + path
      },
      })
    }
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
