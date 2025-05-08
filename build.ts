import fs from 'node:fs/promises'
import os from 'node:os'
import { $ } from 'bun'

const [command, ...args] = process.argv.slice(2)

const { uid, gid } = os.userInfo()

switch (command) {
  /**
   * Build for web
   */
  case 'build:web':
    await $`docker compose run -u ${uid}:${gid} --remove-orphans --rm builder emcc \
    src/ulisp.c -I src -o public/ulisp.js \
    -O2 -fms-extensions -sENVIRONMENT=web -sEXPORT_NAME=createLispWasmModule \
    -sASYNCIFY -sMODULARIZE -g -sWASM=1 \
    -s "EXPORTED_FUNCTIONS=[ '_setup', '_evaluate', '_free' ]" \
    -s "EXPORTED_RUNTIME_METHODS=[ 'cwrap', 'stringToNewUTF8', 'UTF8ToString' ]"`

    {
      // const file = 'src/ulisp.js'
      // await fs.rename('docs/ulisp.js', file)
      // await fs.writeFile(file, replaceExports(await fs.readFile(file, 'utf8')))
      // console.log('Wrote', file)
    }

    break
  /**
   * Build for JavaScript runtime - Node, Bun, Deno
   */
  case 'build:node':
    await $`docker compose run -u ${uid}:${gid} --remove-orphans --rm builder emcc \
    src/ulisp.c -I src -o node/ulisp.js -O2 -fms-extensions -sENVIRONMENT=node \
    -sEXPORT_NAME=createLispWasmModule -sASYNCIFY -sMODULARIZE -g -sWASM=1 \
    -s "EXPORTED_FUNCTIONS=[ '_setup', '_evaluate', '_free' ]" \
    -s "EXPORTED_RUNTIME_METHODS=[ 'cwrap', 'stringToNewUTF8', 'UTF8ToString' ]"`
    /**
     * HACK: Patch output of Emscripten in node/ulisp.js
     *
     * - Replace require() with await import
     * - Replace module.exports with export default
     */
    {
      const file = 'node/ulisp.js'
      await fs.writeFile(
        file,
        replaceExports(await fs.readFile(file, 'utf8'))
          .replace(`fs = require('fs')`, `fs = await import('fs')`)
          .replace(`require('path')`, `{}`)
      )
      console.log('Wrote', file)
    }
    break
  /**
   * Build for standalone (WASI) - TODO: Not working yet
   */
  case 'build:wasi':
    try {
      await $`docker compose run -u ${uid}:${gid} --remove-orphans --rm builder emcc wasi/ulisp-wasi.c \
      -I src -o wasi/ulisp.wasm -O2 -fms-extensions -sENVIRONMENT=node \
      -s STANDALONE_WASM -s EXPORT_ALL \
      -sMODULARIZE -g -sWASM=1`
    } catch (e) {
      console.log(e.stderr.toString())
    }
    break
  default:
    break
}

function replaceExports(str) {
  return str.replace(
    `if (typeof exports === 'object' && typeof module === 'object') {
  module.exports = createLispWasmModule;
  // This default export looks redundant, but it allows TS to import this
  // commonjs style module.
  module.exports.default = createLispWasmModule;
} else if (typeof define === 'function' && define['amd'])
  define([], () => createLispWasmModule);`,
    `export default createLispWasmModule`
  )
}
