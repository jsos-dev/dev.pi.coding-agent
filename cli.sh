#!/bin/jsh

PI_BIN_PATH="$DATA_DIR/.pi/agent/bin"
mkdir -p $PI_BIN_PATH

echo "Welcome to Pi Agent - A minimal agent harness."

echo "Replacing binary tool (fd) ..."
cp bin/fd $PI_BIN_PATH/fd
chmod +x $PI_BIN_PATH/fd
echo "OK"

echo "Replacing binary tool (rg) ..."
cp bin/rg $PI_BIN_PATH/rg
cp bin/rg.wasm $PI_BIN_PATH/rg.wasm
chmod +x $PI_BIN_PATH/rg
echo "OK"

echo "Applying patch..."
node patch.js
chmod +x ./node_modules/.bin/*

echo "Execution complete. Starting up..."
clear

cd $DATA_DIR && PATH="$PATH:$APP_DIR/node_modules/.bin" HOME="$DATA_DIR" pi
