import fs from 'node:fs/promises'
import { $ } from 'bun'

const [command, ...args] = process.argv.slice(2)

switch (command) {
  /**
   * Build for web
   */
  case 'build:web':
    await $`docker compose run --remove-orphans --rm builder emcc \
    src/ulisp.c -I src -o docs/ulisp.js \
    -O2 -fms-extensions -sENVIRONMENT=web -sEXPORT_NAME=createUlispModule \
    -sASYNCIFY -sMODULARIZE -g -sWASM=1 \
    -s "EXPORTED_FUNCTIONS=[ '_setup', '_evaluate', '_free' ]" \
    -s "EXPORTED_RUNTIME_METHODS=[ 'cwrap', 'stringToNewUTF8', 'UTF8ToString' ]"`
    break
  /**
   * Build for standalone (WASI)
   */
  case 'build:wasi':
    await $`docker compose run --remove-orphans --rm builder emcc src/ulisp-wasi.c \
    -I src -o wasi/ulisp.wasm -O2 -fms-extensions -sENVIRONMENT=node \
    -s STANDALONE_WASM -sSUPPORT_LONGJMP=wasm -sEXPORT_NAME=createUlispModule \
    -sMODULARIZE -g -sWASM=1 -s "EXPORTED_FUNCTIONS=[ '_setup', '_free' ]" \
    -s "EXPORTED_RUNTIME_METHODS=[ 'cwrap', 'stringToNewUTF8', 'UTF8ToString' ]"`
    break
  /**
   * Build for JavaScript runtime (Node.js, Bun)
   */
  case 'build:node':
    await $`docker compose run --remove-orphans --rm builder emcc \
    src/ulisp.c -I src -o node/ulisp.js -O2 -fms-extensions -sENVIRONMENT=node \
    -sEXPORT_NAME=createUlispModule -sASYNCIFY -sMODULARIZE -g -sWASM=1 \
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
        (await fs.readFile(file, 'utf8'))
          .replace(
            `if (typeof exports === 'object' && typeof module === 'object') {
  module.exports = createUlispModule;
  // This default export looks redundant, but it allows TS to import this
  // commonjs style module.
  module.exports.default = createUlispModule;
} else if (typeof define === 'function' && define['amd'])
  define([], () => createUlispModule);`,
            `export default createUlispModule`
          )
          .replace(`fs = require('fs')`, `fs = await import('fs')`)
          .replace(`require('path')`, `{}`)
      )
      console.log('Wrote', file)
    }
    break
  default:
    break
}
