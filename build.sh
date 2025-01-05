#!/bin/bash

OUT=out/out_$(uname -s)_$(uname -m).wasm
moc src/main.mo -o $OUT -c
if [ "$compress" == "yes" ] || [ "$compress" == "y" ]; then
  gzip -nf $OUT
  sha256sum $OUT.gz
else
  sha256sum $OUT
fi
