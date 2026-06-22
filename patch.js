#!/usr/bin/env node

import fs from "node:fs";

const SDK_JS = "./node_modules/@earendil-works/pi-coding-agent/dist/core/sdk.js";
const PATCH_JS = `export { AgentSessionRuntime, createAgentSessionFromServices, createAgentSessionRuntime, createAgentSessionServices } from "./agent-session-runtime.js";`;
const PATCH_TAG = '/*JSOS_PATCHED*/';
const SDK_STR = fs.readFileSync(SDK_JS).toString();
if (!SDK_STR.includes(PATCH_TAG)) {
  fs.writeFileSync(SDK_JS, `${SDK_STR}\n\n${PATCH_TAG};\n${PATCH_JS}`);
  console.log('[sdk.js] Patch applied successfully!');
} else {
  console.log('[sdk.js] Already patched!');
}
