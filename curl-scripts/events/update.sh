#!/bin/bash

API="http://localhost:4741"
URL_PATH="/events"

curl "${API}${URL_PATH}/${ID}" \
--include \
--request PATCH \
--header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
  "event": {
    "title": "'"${TEXT}"'",
    "description": "'"${DESCRIPTION}"'",
    "date": "'"${DATE}"'"
  }
}'

echo