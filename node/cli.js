import { createLisp } from './index.js'
import { createLispRepl } from './repl.js'
import { createLispReplServer } from './serve.js'

;(async () => {
  const [command = 'repl', ...args] = process.argv.slice(2)
  const lisp = await createLisp()

  switch (command) {
    case 'repl':
      await createLispRepl(lisp)
      break
    case 'serve':
      await createLispReplServer(lisp)
      break
    default:
      break
  }
})().catch(console.error)
