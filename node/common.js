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
  createLispWasmModule, // Browser or Node
  print: userPrint,
  printError
}) {
  const printBuffer = new PrintBuffer()

  /**
   * By default, each call to print ends with newline, same as Emscripten's print
   * that it overrides. For user-provided callback, the raw value is passed.
   */
  function print(...args) {
    if (userPrint) return userPrint(...args)
    printBuffer.push(
      args.reduce((result, arg) => {
        result += arg // Assume string
        return result
      }, '') + '\n'
    )
  }

  const Module = await createLispWasmModule({
    print,
    printErr: printError || print
  })

  Module._setup()

  async function evaluate(code) {
    printBuffer.start()

    // Allocate memory for string
    const ptr = Module.stringToNewUTF8(`(progn ${code})`)

    // Module._evaluate(ptr) // Synchronous

    /**
     * Using EM_ASYNC_JS in C
     * @see https://emscripten.org/docs/porting/asyncify.html#usage-with-ccall
     * @see https://emscripten.org/docs/api_reference/preamble.js.html#ccall
     */
    await Module.ccall(
      'evaluate', // Function name
      'void', // Return type
      ['number'], // Argument types
      [ptr], // Arguments
      { async: true } // Call options
    )

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
