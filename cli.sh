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
SDK_JS="./node_modules/@earendil-works/pi-coding-agent/dist/core/sdk.js"
echo '\nexport { AgentSessionRuntime, createAgentSessionFromServices, createAgentSessionRuntime, createAgentSessionServices } from "./agent-session-runtime.js";' >> $SDK_JS
chmod +x ./node_modules/.bin/*

echo "Execution complete. Starting up..."
cd $DATA_DIR && PATH="$PATH:$APP_DIR/node_modules/.bin" HOME="$DATA_DIR" pi
