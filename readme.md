# uLisp Web

[uLisp](http://www.ulisp.com) is a programming language for microcontrollers and embedded devices. This project `ulisp-web` is an unofficial port of uLisp to WebAssembly that runs in the browser and on server side.

See [the Playground page](https://eliot-akira.github.io/ulisp-web/).

Status: **Draft** - It can parse and evaluate a Lisp expression. The runtime on WASM has its own process thread with 9K of memory, and an async event loop to communicate and yield control to the host on every instruction.

## Changes

Based on [uLisp builder](https://github.com/technoblogy/ulisp-builder), [uLisp ESP32](https://github.com/technoblogy/ulisp-esp), [BL602 RISC-V fork](https://github.com/lupyuen/ulisp-bl602)

- [x] Rewrite to upgrade from uLisp 3.6 to 4.6b
- [x] Load code and step through each instruction
- [x] Merge changes from uLisp 4.7
- [ ] Replace inputs and outputs with host events (listen and emit) for emulation
  - [ ] Analog port read/write
  - [ ] Digital port read/write
  - [ ] Serial interface
  - [ ] Graphics
  - [ ] Audio
  - [ ] EPROM read/write
  - [ ] Load/save/autorun image
  - [ ] I2C interface
  - [ ] SD card
- [x] REPL (read-eval-print loop) in web interface
- [ ] REPL on server side
- [ ] CLI on server side to run uLisp programs
- [ ] REPL and line editor in uLsip using serial interface
- [x] Code editor with syntax highlight
- [x] Run in the browser
- [x] Run on JavaScript runtimes: Node, Bun, Deno
- [ ] Run on WASM runtimes: wasmtime, etc. - Needs WASI?
- [ ] Documentation
- [ ] Canvas
- [ ] SVG
- [ ] Web Audio

## Develop

Prerequisites:

- [Docker](https://docs.docker.com/engine/) to run Emscripten in a container; or directly use `emcc` from [Emscripten SDK](https://github.com/emscripten-core/emsdk) ([install options](https://emscripten.org/docs/getting_started/downloads.html))
- [Bun](https://bun.sh/)

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

Build for production with minified assets.

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

### Platform-specific features

- The source file preamble
- The platform-specific settings: WORKSPACESIZE, etc.
- The stream definitions: I2C, SPI, serial, etc.
- The analogread and analogwrite I/O pin definitions
- Definitions for note, sleep, and keywords

### Builder steps

From `ulisp-builder/build.lisp`

- Header
- Workspace
- Macros
- Constants
- Typedefs
- Enum declarations
- Global variables
- Error handling
- Setup workspace
- Make objects
- Utilities
- Feature list
- Garbage collection
- Compact image
- Make filename
- Save image
- Tracing
- Helper functions
- Association lists
- Array utilities
- String utilities
- Closures
- In place
- I2C interface
- Stream interface
- Note
- Sleep
- Pretty print
- Assembler
- Interrupts
- Function definitions
- Symbol names
- Documentation strings
- Built-in symbol lookup table
- Eval
- Print functions
- Read functions
- Setup 1 & 2
- REPL
- Loop

## Reference

- [Implementation](http://www.ulisp.com/show?1AWG)
- [Porting uLisp to a new platform](http://www.ulisp.com/show?2JZO)
- [Benchmarks](http://www.ulisp.com/show?1EO1)
- [Web Serial API](https://wicg.github.io/serial/)
