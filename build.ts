import fs from 'node:fs/promises'

const [command, ...args] = process.argv.slice(2)

switch (command) {
  case 'patch':
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
