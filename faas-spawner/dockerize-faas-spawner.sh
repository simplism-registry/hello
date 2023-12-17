#!/bin/bash
set -o allexport; source .release.env; set +o allexport
tinygo build -scheduler=none --no-debug \
-o ${WASM_FILE} \
-target wasi main.go

docker login -u ${DOCKER_USER} -p ${DOCKER_PWD}
docker build -t ${IMAGE_NAME} . 

docker images | grep ${IMAGE_NAME}
