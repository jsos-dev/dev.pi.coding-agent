#!/bin/jsh

echo "Welcome to Pi Agent - A minimal agent harness."

echo "Applying patch..."
SDK_JS="./node_modules/@earendil-works/pi-coding-agent/dist/core/sdk.js"
echo '\nexport { AgentSessionRuntime, createAgentSessionFromServices, createAgentSessionRuntime, createAgentSessionServices } from "./agent-session-runtime.js";' >> $SDK_JS
chmod +x ./node_modules/.bin/*

echo "Execution complete. Starting up..."
cd $DATA_DIR && PATH="$PATH:$APP_DIR/node_modules/.bin" HOME="$DATA_DIR" pi
