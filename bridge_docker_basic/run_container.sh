#!/bin/bash
export TOKEN_SECRET="ilS/VfLZQvSig/EP9y8RtA==:QHELz6le7zg4GcRVHCpaJSuyjjSSH2dR"

docker run -d  --name "bridge_basic" \
  -e AGENT_NAME="yuvy_bridge_linux_agent" \
  -e TC_SERVER_URL="https://eu-west-1a.online.tableau.com/" \
  -e SITE_NAME="ybenichou" \
  -e USER_EMAIL="ybenichou@tableau.com" \
  -e TOKEN_ID="yuvy_linux_bridge_pat" \
  -e TOKEN_VALUE="${TOKEN_SECRET}" \
  -e POOL_ID="3fbca586-8913-419a-8f11-cf9bbf7671e1" \
  bridge_basic

