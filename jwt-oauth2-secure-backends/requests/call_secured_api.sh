#!/usr/bin/env bash
# To update before running
API_BASE_URL="https://<your-proxy-domain>/posts"
ACCESS_TOKEN="<PASTE_ACCESS_TOKEN>"

curl --location "$API_BASE_URL" \
--header "Authorization: Bearer $ACCESS_TOKEN"