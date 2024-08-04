# uLisp WASM

[uLisp](http://www.ulisp.com) compiled to WebAssembly to run in the browser.

See [the Playground page](https://eliot-akira.github.io/ulisp-wasm/).

## Changes

- [x] Based on [uLisp ESP32](https://github.com/technoblogy/ulisp-esp) and the [BL602 RISC-V fork](https://github.com/lupyuen/ulisp-bl602)
- [x] Rewrite to upgrade from uLisp 3.6 to 4.6b
- [ ] Replace inputs and outputs with emulator
- [ ] Code editor
- [ ] Canvas

## Develop

Prerequisites:

- `emcc` from [Emscripten SDK](https://github.com/emscripten-core/emsdk) - See [install options](https://emscripten.org/docs/getting_started/downloads.html)
- [Node](https://nodejs.org) or [Bun](https://bun.sh/) for the frontend app and bundler

### Install

```sh
git clone https://github.com/eliot-akira/ulisp-wasm
cd ulisp-wasm
npm install
```

### Start

Build frontend app as static site, watch files for changes, rebuild and reload page.

```sh
npm run start
```

### Build

Build frontend app as static site for production with minified assets.

```sh
npm run build
```
