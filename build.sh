#!/bin/bash

OUT=out/out_$(uname -s)_$(uname -m)
moc src/main.mo -c -o $OUT.wasm
timeout 3s wasm-opt -O2 $OUT.wasm -o $OUT-opt.wasm
sha256sum $OUT-opt.wasm
[ -f $OUT.wasm ] && rm $OUT.wasm
