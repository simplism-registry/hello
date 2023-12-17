#!/bin/bash
ORGANISATION="simplism-registry"
PROJECT="hello-world"
WASM_FILE="${PROJECT}.wasm"
VERSION="0.0.1"

curl -X POST \
https://app-852807c2-7ae2-4bad-a4ec-593b589c738a.cleverapps.io/spawn \
-H 'admin-spawn-token:michael-burnham-rocks' \
-H 'Content-Type: application/json; charset=utf-8' \
--data-binary @- << EOF
{
    "wasm-file":"hello-world.wasm", 
    "wasm-url":"https://github.com/${ORGANISATION}/${PROJECT}/releases/download/v${VERSION}/${WASM_FILE}",
    "wasm-function":"handle", 
    "http-port":"9091", 
    "discovery-endpoint":"http://localhost:8080/discovery", 
    "admin-discovery-token":"people-are-strange",
    "admin-spawn-token":"michael-burnham-rocks",
    "information": "✋ I'm the hello-people service",
    "service-name": "hello-world"
}
EOF

