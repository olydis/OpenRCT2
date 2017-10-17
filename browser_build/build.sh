#!/bin/bash

# check for emcc
command -v emcc || echo ""
command -v emcc || echo "!!!"
command -v emcc || echo "'emcc' not found, please make sure it's on the \$PATH"
command -v emcc || echo "(see https://kripken.github.io/emscripten-site/docs/getting_started/downloads.html)"
command -v emcc || echo "!!!"
command -v emcc || echo ""
command -v emcc || exit 1

# build
set -e

cd "$(dirname "$0")"
bash ./build_compile.sh
bash ./build_link.sh
cp index.html ../www