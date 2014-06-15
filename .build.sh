#!/bin/sh

MAKE=make
if [ "$OS" == "Windows_NT" ]; then
	MAKE=mingw32-make
fi

$MAKE gen-lib
rustc --out-dir=$CARGO_OUT_DIR $CARGO_RUSTFLAGS src/gl/lib.rs
