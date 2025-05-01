import path from 'node:path'
import { fileURLToPath } from 'node:url'
import fs from 'fs/promises'
import WASI from './wasi.js'

const __dirname = path.dirname(fileURLToPath(import.meta.url));

const content = await fs.readFile(path.join(__dirname, 'ulisp.wasm'))

// https://developer.mozilla.org/en-US/docs/WebAssembly
const wasm = await WebAssembly.compile(content).catch((e) => {
  console.error('ERROR:', e)
})

const wasi = new WASI({
  version: 'preview1',
  args: ['ulisp', ...process.argv.slice(2)],
})

// const instance = await WebAssembly.instantiate(wasm, wasi.getImportObject())
// wasi.start(instance)

const lib = (
  await WebAssembly.instantiate(wasm, {
    wasi_snapshot_preview1: wasi.exports,
    // env: {},
  })
).exports
wasi.memory = lib.memory
lib._start()

// bun build echo.ts --compile --outfile echo
