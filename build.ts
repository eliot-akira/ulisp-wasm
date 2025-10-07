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
    c99/ulisp.c -I c99 -o public/ulisp.js \
    -sASSERTIONS \
    -O2 -fms-extensions -sENVIRONMENT=web -sEXPORT_NAME=createLispWasmModule \
    -sASYNCIFY -sMODULARIZE -g -sWASM=1 \
    -s "EXPORTED_FUNCTIONS=[ '_setup', '_evaluate', '_free', '_print_version', '_stop_loop' ]" \
    -s "EXPORTED_RUNTIME_METHODS=[ 'ccall', 'cwrap', 'stringToNewUTF8', 'UTF8ToString' ]"`

    {
      const file = 'web/ulisp.js'
      await fs.rename('public/ulisp.js', file)
      await fs.writeFile(file, patchEmscriptenOutput(await fs.readFile(file, 'utf8')))
      console.log('Wrote', file)
    }

    break
  /**
   * Build for JavaScript runtime - Node, Bun, Deno
   */
  case 'build:node':
    await $`docker compose run -u ${uid}:${gid} --remove-orphans --rm builder emcc \
    c99/ulisp.c -I c99 -o node/ulisp.js \
    -sASSERTIONS \
    -O2 -fms-extensions -sENVIRONMENT=node -sEXPORT_NAME=createLispWasmModule \
    -sASYNCIFY -sMODULARIZE -g -sWASM=1 \
    -s "EXPORTED_FUNCTIONS=[ '_setup', '_evaluate', '_free', '_print_version', '_stop_loop' ]" \
    -s "EXPORTED_RUNTIME_METHODS=[ 'ccall', 'cwrap', 'stringToNewUTF8', 'UTF8ToString' ]"`
    {
      const file = 'node/ulisp.js'
      await fs.writeFile(file, patchEmscriptenOutput(await fs.readFile(file, 'utf8')))
      console.log('Wrote', file)
    }
    break
  /**
   * Build for standalone (WASI) - TODO: Not working yet
   */
  case 'build:wasi':
    try {
      await $`docker compose run -u ${uid}:${gid} --remove-orphans --rm builder emcc wasi/ulisp-wasi.c \
      -I c99 -o wasi/ulisp.wasm -O2 -fms-extensions -sENVIRONMENT=node \
      -s STANDALONE_WASM -s EXPORT_ALL \
      -sMODULARIZE -g -sWASM=1`
    } catch (e) {
      console.log(e.stderr.toString())
    }
    break
  /**
   * Build CLI
   */
  case 'build:cli':
    await fs.mkdir('build', { recursive: true })

    // Use Clang and/or Zig cc

    try {
      console.log('Checking Clang version')
      await $`clang --version`

      console.log('Using clang')
      // -lm - Link libm, which contains all the floating point math routines, including fmod
      // -lreadline - Replaced by linenoise because readline kept throwing segmentation fault
      // -D_DEFAULT_SOURCE to define fchmod in #include <sys/stat.h>
      // -D_XOPEN_SOURCE to define fileno in #include <stdio.h>
      try {
        await $`clang -std=c99 -lm -O3 -D_DEFAULT_SOURCE -D_XOPEN_SOURCE -D__HAS_RANDOM__=1 -o build/ulisp-cli -I c99 c99/ulisp.c c99/repl/readline.c`
      } catch (e) {
        console.log(e.stderr.toString())

        // Exit if Clang build fails - No need to fall through to Zig cc
        break
      }
    } catch (e) {
      console.log('Clang not found - Skipping native build')
      // break
    }

    try {
      console.log('Checking Zig version')
      await $`zig version`
    } catch (e) {
      console.log('Zig not found - Skipping cross-platform builds')
      break
    }

    console.log('Using Zig cc')
    for (const platform of [
      // zig targets | grep x86_64-
      'x86_64-linux',
      'x86_64-macos',
      // zig targets | grep aarch64-
      'aarch64-linux',
      'aarch64-macos',

      // readline doesn't support Windows
      // 'x86_64-windows',
      // 'aarch64-windows',
    ]) {
      console.log('Platform:', platform)
      const [arch, os] = platform.split('-')
      try {
        // Standardize suffix with result of "bun build" below
        let destFile = `build/ulisp-cli-${os}-${arch === 'aarch64' ? 'arm64' : arch === 'x86_64' ? 'x64' : 'unknown'}`
        console.log('Target file:', destFile)
        let result = await $`zig cc -target ${platform} -std=c99 -lm -O3 ${
          ['x86_64-linux', 'aarch64-linux', 'x86_64-macos', 'aarch64-macos'].includes(platform)
            ? '-D__HAS_RANDOM__'
            : ''
        } ${
          ['x86_64-linux', 'aarch64-linux'].includes(platform) ? '-D_XOPEN_SOURCE' : ''
        } -o ${destFile} c99/ulisp.c c99/repl/readline.c`
        console.log('Build success')
        console.log(result.stdout.toString())

      } catch (e) {
        console.log(e.stderr ? e.stderr.toString() : e)
      }
    }
    break
  /**
   * Build server with Bun
   */
  case 'build:bun':
    await fs.mkdir('build', { recursive: true })
    try {
      for (const platform of [
        'linux-x64',
        'linux-arm64',
        'windows-x64',
        // 'windows-arm64', // Unsupported by Bun
        'darwin-x64',
        'darwin-arm64'
      ]) {
        const [os, arch] = platform.split('-')
        const srcFile = `node/cli.js`
        const destFile = `build/ulisp-bun-${os === 'darwin' ? 'macos' : os}-${arch}`
        console.log('Target file:', destFile)
        await $`bun build --compile --minify --sourcemap --target bun-${platform} --outfile ${destFile} ${srcFile}`
      }
    } catch (e) {
      console.log(e.stderr.toString())
    }
    break

  /**
   * Build Zig source
   */
  case 'build:zig':
    try {
      await $`zig translate-c -D__HAS_RANDOM__=1 -lc c99/ulisp.c > zig/ulisp.zig`
    } catch (e) {
      console.log(e.stderr.toString())
    }
    break
  default:
    break
}

/**
 * Patch Emscripten output
 * - For task build:web, public/ulisp.js
 * - For task build:node, node/ulisp.js
 */
function patchEmscriptenOutput(str) {
  const replaceExport = `export default createLispWasmModule`

  let replacedStr = str
    // Replace module.exports with export default
    .replace(
      `if (typeof exports === 'object' && typeof module === 'object') {
  module.exports = createLispWasmModule;
  // This default export looks redundant, but it allows TS to import this
  // commonjs style module.
  module.exports.default = createLispWasmModule;
} else if (typeof define === 'function' && define['amd'])
  define([], () => createLispWasmModule);`,
      replaceExport
    )
    .replace(
      // Silence unhandled promise when loop aborted
      `startAsync().then(wakeUp);`,
      `startAsync().then(wakeUp).catch(() => {});`
    )
    // Replace require() with await import
    .replace(`fs = require('fs')`, `fs = await import('fs')`)
    // Replace unused path module
    .replace(`require('path')`, `{}`)

  // Warn when an upstream change breaks it

  if (replacedStr.indexOf(replaceExport) === -1) {
    console.warn(`

Warning: Looks like upstream changed its export method.
See build.ts, public/ulisp.js or node/ulisp.js

`)
  }

  return replacedStr
}
