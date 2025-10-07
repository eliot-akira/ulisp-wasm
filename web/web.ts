import createLispWasmModule from './ulisp.js'
import { lispCreator } from '../node/common.js'
import type { CreateLispOptions } from '../site/lib/create-lisp.ts'


export async function createLisp(moduleArgs: CreateLispOptions = {}) {
  const {
    wasmPath = '',
    tick, // step?
    print,
    printError,

    // Stream
    readByte,
    writeByte,
    readLine
  } = moduleArgs

  /**
   * TODO: Module expects a global variable `ulisp`. Move them as callbacks
   * passed to createLispWasmModule().
   */
  // Store Module reference for flushOutput
  let WasmModule: any = null

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
    // Stream I/O
    async readByte(streamType: number) {
      return readByte ? await readByte(streamType) : ''
    },
    writeByte(streamType: number, data: string) {
      if (writeByte) {
        writeByte(streamType, data)
      }
    },
    // Console I/O
    async readLine() {
      return readLine ? await readLine() : ''
    },
    writeLine(data: string) {
      if (print) {
        print(data)
      }
    },
    writeLineError(data: string) {
      if (printError) {
        printError(data)
      } else if (print) {
        print(data)
      }
    },
    // Flush output - called before input operations
    // This is now handled in C by writing a newline to force Emscripten to flush
    flushOutput() {
      // No-op: The C code handles flushing by writing a newline when needed
    },
    // Store Module reference when it's created
    setModule(module: any) {
      WasmModule = module
    },
    escape() {
      return 0 // Return 1 to stop the runtime
    },
    wait_for_tick() {
      if (tick) return tick()
    },
    stop() {}
    // print(arg) {
    //   if (print) print(arg)
    // },
  })

  return await lispCreator({
    print,
    printError: printError || print,

    readByte,
    writeByte,
    readLine,

    createLispWasmModule(args = {}) {
      return createLispWasmModule({
        ...args,
        locateFile(path, scriptPath) {
          // scriptPath points to source during development
          // console.log('path', wasmPath + path)
          return wasmPath + path
        }
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
