import repl from 'node:repl'

export async function createLispRepl(lisp, options = {}) {
  let lock

  const {
    input = process.stdin,
    output = process.stdout,
  } = options

  output.write(`uLisp ${
    await lisp.eval(`version`)
  }\n`) // TODO: Create constant to get version on uLisp side

  const instance = repl.start({
    prompt: '> ',
    input,
    output,
    terminal: true,
    useColors: true,
    useGlobal: false,
    eval: async function evaluate(code, context, replResourceName, callback) {
      // Process eval requests in sequence on shared Lisp instance
      await lock
      lock = await (async () => {
        try {
          const result = await lisp.eval(code)
          callback(null, result)
        } catch (e) {
          callback(e)
        }
      })()
    },
    writer(output) {
      return output
    },
    ...options
  })

  instance.on('error', (e) => {
    console.error(e.message)
  })

  return instance
}
