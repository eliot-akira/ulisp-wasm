import createLispWasmModule from './ulisp.js'
import { dirname } from 'node:path'
import { fileURLToPath } from 'node:url'

class PrintBuffer {
  buffer = ''
  start() {
    this.buffer = ''
  }
  push(str) {
    this.buffer += str
  }
  end() {
    let result = this.buffer.trimEnd()
    this.buffer = ''
    return result
  }
}

export async function createLisp() {
  const __dirname = dirname(fileURLToPath(import.meta.url))

  // Emscripten output expects this global
  globalThis.__dirname = __dirname

  const printBuffer = new PrintBuffer()
  const Module = await createLispWasmModule({
    print(...args) {
      printBuffer.push(
        args.reduce((result, arg) => {
          result += arg // Assume string
          return result
        }, '')
      )
    }
  })

  Module._setup()

  async function evaluate(code) {
    printBuffer.start()

    // Allocate memory for string
    const ptr = Module.stringToNewUTF8(code)

    Module._evaluate(ptr)

    // Free it after use
    Module._free(ptr)

    return printBuffer.end()
  }

  return {
    eval: evaluate
  }
}
