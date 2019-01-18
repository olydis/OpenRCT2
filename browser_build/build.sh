#!/bin/bash

cd "$(dirname "$0")"

# check for emcc (tested with 1.38.22)
command -v emcc || echo ""
command -v emcc || echo "!!!"
command -v emcc || echo "'emcc' not found, please make sure it's on the \$PATH"
command -v emcc || echo "(see https://kripken.github.io/emscripten-site/docs/getting_started/downloads.html)"
command -v emcc || echo "!!!"
command -v emcc || echo ""
command -v emcc || exit 1


# copy stuff
mkdir -p ../www/user-data-path
cp index.html ../www
cp config.ini ../www/user-data-path

# build
set -e
./build_compile.sh
./build_link.sh
