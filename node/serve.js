import http from 'node:http'
import { createLispRepl } from './repl.js'

export async function createLispReplServer(lisp, options = {}) {
  const { port = 8000 } = options

  const server = http.createServer((req, res) => {
    res.setHeader('content-type', 'multipart/octet-stream')

    createLispRepl(lisp, {
      input: req,
      output: res,
      terminal: false
    }).catch((e) => res.end(e.message))
  })

  server.listen(port)

  console.log(`Server listening at http://localhost:${port}`)
}
