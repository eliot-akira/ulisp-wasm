export class PrintBuffer {
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

export async function lispCreator({
  createLispWasmModule // Browser or Node
}) {
  const printBuffer = new PrintBuffer()

  function print(...args) {
    printBuffer.push(
      args.reduce((result, arg) => {
        result += arg // Assume string
        return result
      }, '')
    )
  }

  const Module = await createLispWasmModule({
    print,
    printErr: print
  })

  Module._setup()

  async function evaluate(code) {
    printBuffer.start()

    // Allocate memory for string
    const ptr = Module.stringToNewUTF8(`(progn ${code})`)

    Module._evaluate(ptr)

    // Free it after use
    Module._free(ptr)

    // Return value: Number, string - TODO: Function, ..

    const value = printBuffer.end()

    if (value === 'nil') return null
    if (value === 't') return true

    try {
      return JSON.parse(value)
    } catch (e) {
      return value
    }
  }

  return {
    eval: evaluate
  }
}
