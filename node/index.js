import createLispWasmModule from './ulisp.js'
import { dirname } from 'node:path'
import { fileURLToPath } from 'node:url'
import { lispCreator } from './common.js'

export async function createLisp() {
  const __dirname = dirname(fileURLToPath(import.meta.url))
  // Emscripten output expects this global
  globalThis.__dirname = __dirname

  return await lispCreator({
    createLispWasmModule
  })
}
