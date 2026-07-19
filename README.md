# Vite 8.1 WASM ESM Integration Sandbox

[![Deploy](https://github.com/drumath2237/vite8-wasm-esmodule-sandbox/actions/workflows/deploy.yml/badge.svg)](https://github.com/drumath2237/vite8-wasm-esmodule-sandbox/actions/workflows/deploy.yml)

## About

A sandbox project for trying out a new feature of Vite 8.1.0 called [WebAssembly ES Module Integration](https://vite.dev/blog/announcing-vite8-1#wasm-esm-integration-support).

```ts
import { add } from "../wasm/math_wasm.wasm";

const result = add(1, 2);
console.log(result);
```

[Demo page](https://drumath2237.github.io/vite8-wasm-esmodule-sandbox/)

## Tested Environment

- Windows 11 Home
- just 1.54.0
- cargo 1.96.0
  - with `wasm32-unknown-unknown` target
- Node.js 24.16.0
- pnpm 11.8.0
- Vite 8.1.5

## Directory Structure

```
/
├─ math-wasm/
│    ├─ src/
│    │    └─ lib.rs
│    └─ Cargo.toml
├─ vite-wasm-esm/
│    ├─ src/
│    │    └─ main.ts
│    ├─ wasm/
│    │    ├─ math-wasm.wasm
│    │    └─ math-wasm.d.wasm.ts
│    ├─ index.html
│    └─ package.json
├─ justfile
└─ README.md
```

## Install & Usage

Prepare and build this by `just`

```sh
# install dependencies
just prepare

# build wasm and copy to vite directory
just build-wasm

# build vite
just build-vite

# build both wasm and vite
just build

# start vite dev server
just dev
```

## Author

[@drumath2237](https://x.com/ninisan_drumath)
