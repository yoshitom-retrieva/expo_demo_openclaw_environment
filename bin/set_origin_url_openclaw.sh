#!/usr/bin/env bash
set -euo pipefail

origin="${1%/}"
json=$(jq -cn --arg origin "$origin" \
  '[{path:"gateway.controlUi.allowedOrigins",value:[$origin]}]')

docker compose exec openclaw-gateway \
  node /app/dist/index.js config set --batch-json "$json"

docker compose restart openclaw-gateway
