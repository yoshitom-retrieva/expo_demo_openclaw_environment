
CIDR=$(docker network inspect ai_expo_2026_default --format '{{range .IPAM.Config}}{{.Subnet}}{{end}}')
docker compose exec openclaw-gateway node /app/dist/index.js config set --batch-json '[{"path":"gateway.trustedProxies","value":["${CIDR}"]}]'
docker compose restart openclaw-gateway
