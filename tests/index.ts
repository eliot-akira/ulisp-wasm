import createUlisp from '../node/ulisp.js'
import { test, is, run as runTests } from 'testra'

test('create', async () => {
  is(true, createUlisp instanceof Function, 'create is a function')

  let result: any = createUlisp()

  is(true, result instanceof Promise, 'create returns a promise')

  result = await result

  is(true, result instanceof Object, 'promise resolves to module instance')

  class PrintBuffer {
    buffer = ''
    start() {
      this.buffer = ''
    }
    push(str: string) {
      this.buffer += str
    }
    end() {
      let result = this.buffer.trimEnd()
      this.buffer = ''
      return result  
    }
  }

  const printBuffer = new PrintBuffer

  const Module = await createUlisp({
    print(...args) {
      printBuffer.push(args.reduce((result, arg) => {
        result += arg // Assume string
        return result
      }, ''))
    },
    setStatus: function (text) {
      // Status from Emscripten module
      // if (text) {
      //   console.log('status', text)
      // }
    }
  })

  Module._setup()

  const tickQueue: Function[] = []
  let shouldStop = false

  /**
   * TODO: Module expects a global variable `ulisp`. Move them as callbacks
   * passed to createUlisp() above.
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
    }
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
    printBuffer.start()

    // Wrap to run multiple expressions, returning the last value
    code = `(progn ${code})`

    //  Allocate memory for the string and create a pointer
    const ptr = Module.stringToNewUTF8(code)
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

    return printBuffer.end()
  }

  let code

  code = `(+ 1 2)`
  result = await run(code)
  is('3', result, code)

  code = `
(defun fib (n)
(if (< n 3) 1
  (+ (fib (- n 1)) (fib (- n 2)))))
(fib 5)
`

  result = await run(code)
  is('5', result, '(fib 5)')
})

runTests()
