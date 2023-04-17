#!/bin/bash

set -euo pipefail

: ${GALAXY_TOKEN:=}
if [ -z "${GALAXY_TOKEN}" ]; then
  echo "GALAXY_TOKEN not set, abort"
  exit 1
fi

COLLECTION_VERSION=$(yq .version galaxy.yml)
echo "collection version is ${COLLECTION_VERSION}"

if [ -n "$(git status --porcelain | grep -v publish.sh)" ]; then
  echo "git working tree's not clean, abort"
  exit 2
fi

git tag ${COLLECTION_VERSION}
git push origin ${COLLECTION_VERSION}
ansible-galaxy collection build .
ansible-galaxy collection publish --token $GALAXY_TOKEN ru-ops-general-${COLLECTION_VERSION}.tar.gz
