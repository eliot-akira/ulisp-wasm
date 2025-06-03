import http from 'node:http'
import { createLispRepl } from './repl.js'
/**
 * Start server, then connect from remote host. For example:
 * curl --no-progress-meter -sSNT. 10.0.0.35:8000
 */
export async function createLispReplServer(lisp, options = {}) {
  const { port = 8000 } = options

  const server = http.createServer(async (req, res) => {
    res.setHeader('content-type', 'multipart/octet-stream')
    try {
      await createLispRepl(lisp, {
        input: req,
        output: res,
        terminal: false
      })  
    } catch(e) {
      res.end(e.message)
    }
  })

  server.listen(port)
  server.on('error', e => {
    console.log('Server error', e)
  })

  console.log(`Server listening at http://localhost:${port}`)
}
