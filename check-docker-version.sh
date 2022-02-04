#! /usr/bin/env bash
set -euo pipefail

match="$(grep "=${VERSION}" "${DOCKERFILE}")"
echo "$match"
[[ -z "$match" ]] && { echo "Version in ${DOCKERFILE} isn't in sync with product version: ${VERSION}"; exit 1; }
echo "Version in ${DOCKERFILE} is in sync with product version: ${VERSION}"