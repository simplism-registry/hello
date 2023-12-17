#!/bin/bash
set -o allexport; source .release.env; set +o allexport

docker run \
  --env ADMIN_DISCOVERY_TOKEN=people-are-strange \
  --env ADMIN_SPAWN_TOKEN=michael-burnham-rocks \
  -p 8080:8080 \
  --rm ${IMAGE_NAME}
