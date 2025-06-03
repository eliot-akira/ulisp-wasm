# uLisp on WebAssembly

[uLisp](http://www.ulisp.com) is a programming language for microcontrollers and embedded devices. This project `ulisp-wasm` is a port of uLisp to WebAssembly that runs in the browser and on server side.

See [the Playground page](https://eliot-akira.github.io/ulisp-wasm/).

Status: **Draft** - It can parse and evaluate a Lisp expression. The runtime on Wasm has its own process thread with 64K of memory, and an event loop to yield control to the host on every instruction.

## Changes

Based on [uLisp builder](https://github.com/technoblogy/ulisp-builder), [uLisp ESP32](https://github.com/technoblogy/ulisp-esp), [BL602 RISC-V fork](https://github.com/lupyuen/ulisp-bl602)

- [x] Rewrite to upgrade from uLisp 3.6 to 4.6b
- [x] Load code and step through each instruction
- [x] Merge changes from uLisp 4.7
- [ ] Replace devices with host events for emulation
  - [ ] Analog port read/write
  - [ ] Digital port read/write
  - [ ] Serial interface
  - [ ] Graphics
  - [ ] Audio
  - [ ] LittleFS
  - [ ] EPROM read/write
  - [ ] Load/save/autorun image
  - [ ] I2C interface - See function `with-i2c`
  - [ ] SD card
  - [ ] [Extended RAM](http://www.ulisp.com/show?4UKH) - Define `BOARD_HAS_PSRAM`
- [x] REPL (read-eval-print loop) in web interface
- [x] REPL on server side
- [ ] REPL and line editor in uLsip using serial interface
- [ ] CLI on server side to run uLisp programs
- [x] Run in the browser
- [x] Run on JavaScript runtimes: Node, Bun, Deno
- [x] Run on WASM runtimes with WASI support
  - [ ] [Wasmer](https://wasmer.io/) - [Add support for WebAssembly exceptions](https://github.com/wasmerio/wasmer/issues/3100)
  - [ ] [wasmtime](https://github.com/bytecodealliance/wasmtime) - [Implementation strategy for the Exception Handling proposal](https://github.com/bytecodealliance/wasmtime/issues/3427)
- [ ] Standalone executable
  - [WebAssembly Standalone](https://github.com/emscripten-core/emscripten/wiki/WebAssembly-Standalone)
  - Or maybe [`wasm-micro-runtime`](https://github.com/bytecodealliance/wasm-micro-runtime)
- [ ] Documentation
- [ ] Web interface
  - [x] Code editor with syntax highlight
  - [ ] Console output
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

- [Graphics display interface in Lisp](http://www.ulisp.com/show?23QU)
- [Plotting to a colour TFT display](http://www.ulisp.com/show?2NSB)

## Graphics

uLisp has graphics methods that use the [Adafruit GFX Library](https://learn.adafruit.com/adafruit-gfx-graphics-library) with [TFT LCD](https://en.wikipedia.org/wiki/TFT_LCD) displays.

```c
// Color definitions
#define BLACK    0x0000
#define BLUE     0x001F
#define RED      0xF800
#define GREEN    0x07E0
#define CYAN     0x07FF
#define MAGENTA  0xF81F
#define YELLOW   0xFFE0 
#define WHITE    0xFFFF
```

### `draw-bitmap`

```c
drawBitmap(x, y, canvas.getBuffer(), 128, 32, foreground, background)
```

### `draw-char`

(draw-char x y char [colour background size])
Draws the character char with its top left corner at (x,y).
The character is drawn in a 5 x 7 pixel font in colour against background,
which default to white and black respectively.
The character can optionally be scaled by size.

### `draw-circle`

### `draw-line`

### `draw-pixel`

```c
void drawPixel(uint16_t x, uint16_t y, uint16_t color);
```

### `draw-rect`

### `draw-round-rect`

### `draw-triangle`

### `fill-circle`

### `fill-rect`

### `fill-round-rect`

### `fill-screen`

### `fill-triangle`

### `get-text-bounds`

```c
getTextBounds(string, x, y, &x1, &y1, &w, &h)
```

### `init(width, height)`

### `invert-display`

### `set-dursor`

### `set-rotation`

Sets the display orientation for subsequent graphics commands; values are 0, 1, 2, or 3.

### `set-text-color`

### `set-text-size`

### `set-text-wrap`
