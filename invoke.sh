#!/bin/bash

curl -X POST https://api.github.com/repos/uvarc/uvarc-services/dispatches \
  -H 'Accept: application/vnd.github.everest-preview+json' \
  -u nmagee:$GITHUB_PAT2 \
  --data '{"event_type": "Version update", "client_payload": { "service": "nginx-versions", "version": "1.7" }}'


curl \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GITHUB_PAT2" \
  -d '{"ref":"topic-branch","inputs":{"name":"Mona the Octocat","home":"San Francisco, CA"}}' \
  https://api.github.com/repos/uvarc/uavrc-services/actions/workflows/dispatch.yaml/dispatches 
