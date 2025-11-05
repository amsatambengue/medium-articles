#!/usr/bin/env bash
# To update before running
KC_BASE_URL="http://localhost:8080"
REALM="mule_realm"
CLIENT_ID="mule-gateway-client"
CLIENT_SECRET="<YOUR_CLIENT_SECRET>"
USERNAME="<YOUR_USERNAME>"
PASSWORD="<YOUR_PASSWORD>"

curl --location "$KC_BASE_URL/realms/$REALM/protocol/openid-connect/token" \
  --header "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "grant_type=password" \
  --data-urlencode "username=$USERNAME" \
  --data-urlencode "password=$PASSWORD" \
  --data-urlencode "client_id=$CLIENT_ID" \
  --data-urlencode "client_secret=$CLIENT_SECRET"
