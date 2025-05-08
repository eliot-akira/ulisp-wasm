import createLispWasmModule from '../node/ulisp.js'

export async function create() {
  let printBuffer = ''

  const Module = await createLispWasmModule({
    print(...args) {
      // console.log(...args)

      printBuffer += args.reduce((result, arg) => {
        result += arg // Assume string
        return result
      }, '')
    },
    setStatus: function (text) {
      // Status from Emscripten module
      // if (text) {
      //   console.log('status', text)
      // }
    },
  })

  Module._setup()

  const tickQueue: Function[] = []
  let shouldStop = false

  /**
   * TODO: Module expects a global variable `ulisp`. Move them as callbacks
   * passed to createLispWasmModule() above.
   */
  const ulisp = (globalThis.ulisp = {
    run,
    // Called from Lisp code running on WASM
    call(command, ...args) {
      console.log('ulisp.call', command, ...args)
      switch (command) {
        case 'analogRead':
          return args[0] / 2
          break
        case 'analogWrite':
          break
        case 'digitalRead':
          return args[0]
          break
        case 'digitalWrite':
          break
      }
    },
    escape() {
      // Return 1 to stop the runtime
      return 0
    },
    // Called from WASM evaluate() after every instruction step
    wait_for_tick() {
      if (shouldStop) return 1
      return new Promise((resolve, reject) => {
        tickQueue.push(resolve)
      })
    },
    stop() {
      shouldStop = true
    },
  })

  async function tick() {
    const callback = tickQueue.shift()
    if (!callback) return false

    callback(shouldStop ? 1 : 0)
    await new Promise((resolve, reject) => {
      setImmediate(resolve)
    })

    return tickQueue.length
  }

  async function run(code) {
    // Module.print('\n> ' + code + '\n')

    shouldStop = false

    // Wrap to run multiple expressions, returning the last value
    code = `(progn ${code})`

    //  Allocate memory for the string and create a pointer
    const ptr = Module.stringToNewUTF8(code)

    printBuffer = ''
    Module._evaluate(ptr)

    let i = 0
    const maxTicks = 9999

    try {
      // Call tick until done
      while (await tick()) {
        if (i++ > maxTicks) {
          console.log('Max ticks exceeded', maxTicks)
          shouldStop = true
          break
        }
      }
    } catch (e) {
      console.log(e)
    }

    // Free the memory
    Module._free(ptr)

    let result = printBuffer.trimEnd()
    printBuffer = ''
    return result
  }

  return { tick, run, Module }
}
