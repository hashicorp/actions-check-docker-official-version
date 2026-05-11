#! /usr/bin/env bash
# Copyright IBM Corp. 2022, 2026


match="$(grep "=${VERSION}" "${DOCKERFILE}")"
echo "$match"
[[ -z "$match" ]] && { echo "Version in ${DOCKERFILE} isn't in sync with product version: ${VERSION}"; exit 1; }
echo "Version in ${DOCKERFILE} is in sync with product version: ${VERSION}"
