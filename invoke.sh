#!/bin/bash

# curl -X POST https://api.github.com/repos/uvarc/uvarc-services/dispatches \
#   -H 'Accept: application/vnd.github.everest-preview+json' \
#   -u nmagee:$GITHUB_PAT \
#   --data '{"event_type": "Version update", "client_payload": { "service": "nginx-versions", "version": "1.7" }}'

curl -X POST https://api.github.com/repos/uvarc/uvarc-services/dispatches -H 'Accept: application/vnd.github.everest-preview+json' -u nmagee:$GITHUB_PAT -d '{"event_type": "Version update", "client_payload": { "service": "nginx-versions", "version": "1.7" }}'
