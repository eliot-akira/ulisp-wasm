# uLisp WebAssembly

[uLisp](http://www.ulisp.com) is a Lisp programming language for embedded devices. This project `ulisp-wasm` is a WebAssembly port of uLisp to run on the browser and server side.

See [the Playground page](https://eliot-akira.github.io/ulisp-wasm/).

## Features

- [x] Based on [uLisp ESP32](https://github.com/technoblogy/ulisp-esp) and the [BL602 RISC-V fork](https://github.com/lupyuen/ulisp-bl602)
- [x] Rewrite to upgrade from uLisp 3.6 to 4.6b
- [ ] Replace inputs and outputs with emulator
- [ ] A way to load code, then step through each instruction
- [ ] Code editor
- [ ] Canvas
- [ ] Replace platform-agnostic code from upstream [uLisp builder](https://github.com/technoblogy/ulisp-builder)

## Develop

Prerequisites:

- `emcc` from [Emscripten SDK](https://github.com/emscripten-core/emsdk) - See [install options](https://emscripten.org/docs/getting_started/downloads.html)
- [Bun](https://bun.sh/) for the frontend app and bundler

### Install

```sh
git clone https://github.com/eliot-akira/ulisp-wasm
cd ulisp-wasm
bun install
```

### Start

Build frontend app as static site, watch files for changes, rebuild and reload page.

```sh
bun run start
```

### Build

Build frontend app as static site for production with minified assets.

```sh
bun run build
```

## Code organization

From [documentation of uLisp builder](http://www.ulisp.com/show?3F07)

- `preface.lisp` - the C macros and constant definitions
- `utilities.lisp` - the C typedefs, global variables, and utility functions
- `saveload.lisp` - the definitions for save-image, load-image, and autorun
- `assembler.lisp` - the assembler for the ARM and RISC-V platforms
- `prettyprint.lisp` - the prettyprinter
- `postscript.lisp` - the definitions for the function table lookup, eval, read, print, and the REPL

Platform-specific features

- The source file preamble
- The platform-specific settings: WORKSPACESIZE, etc.
- The stream definitions: I2C, SPI, serial, etc.
- The analogread and analogwrite I/O pin definitions
- Definitions for note, sleep, and keywords

## Reference

- [Porting uLisp to a new platform](http://www.ulisp.com/show?2JZO)
- [Web Serial API](https://wicg.github.io/serial/)
