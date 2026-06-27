# https://just.systems

wasmdir := "math-wasm"
vitedir := "vite-wasm-esm"

build: build-wasm && build-vite

[working-directory: wasmdir]
build-wasm:
    cargo build --target wasm32-unknown-unknown
    cp ./target/wasm32-unknown-unknown/debug/math_wasm.wasm ../vite-wasm-esm/wasm/math_wasm.wasm

[working-directory: vitedir]
build-vite:
    pnpm build

[working-directory: vitedir]
prepare:
    pnpm install

[working-directory: vitedir]
check:
    pnpm run check

[working-directory: vitedir]
dev:
    pnpm dev
