#!/bin/bash

clear
TARGET="${CARGO_TARGET_DIR:-target}"
set -e
cd "`dirname $0`"
cargo build --target wasm32-unknown-unknown --release

DIRECTORY="res"

if [ ! -d "$DIRECTORY" ]; then
    # Will enter here if $DIRECTORY exists, even if it contains spaces
    mkdir $DIRECTORY
fi

cp $TARGET/wasm32-unknown-unknown/release/cmn_token.wasm ./res
