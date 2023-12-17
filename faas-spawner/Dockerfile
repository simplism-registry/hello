FROM ubuntu:22.04 as wasm-file

RUN <<EOF
apt-get update 
apt-get install -y wget 
wget https://github.com/simplism-registry/faas-spawner/releases/download/v0.0.1/faas-spawner.wasm
EOF

FROM k33g/simplism:0.0.7

COPY --from=wasm-file faas-spawner.wasm .

ENV ADMIN_DISCOVERY_TOKEN=${ADMIN_DISCOVERY_TOKEN}
ENV ADMIN_SPAWN_TOKEN=${ADMIN_SPAWN_TOKEN}
EXPOSE 8080
CMD [ "/simplism",                  \
      "listen",                     \
      "faas-spawner.wasm",          \
      "handle",                     \
      "--http-port",                \
      "8080",                       \
      "--log-level",                \
      "info",                       \
      "--service-discovery",        \
      "true",                       \
      "--information",              \
      "👋 I'm the spawner service", \
      "--spawn-mode",               \
      "true"                        \
    ]
