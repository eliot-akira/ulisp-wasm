
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

  // TODO: Figure out Vite bundle/serve .wasm from docs
  const { createLispWasmModule } = window

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
    const ptr = Module.stringToNewUTF8(`(progn ${code})`)

    Module._evaluate(ptr)

    // Free it after use
    Module._free(ptr)

    return printBuffer.end()
  }

  return {
    eval: evaluate
  }
}
