#!/usr/bin/env bash
set -euo pipefail

RELEASE_ID="${1:-}"
if [[ -z "${RELEASE_ID}" ]]; then
  echo "Usage: $0 <release_id>"
  exit 1
fi

ROOT=/opt/ragflow
REL_DIR="${ROOT}/releases/${RELEASE_ID}"
CUR_LINK="${ROOT}/current"
ENV_FILE="${ROOT}/shared/.env"

if [[ ! -d "${REL_DIR}" ]]; then
  echo "Release directory not found: ${REL_DIR}"
  exit 1
fi

ln -sfn "${REL_DIR}" "${CUR_LINK}"
docker compose --env-file "${ENV_FILE}" -f "${CUR_LINK}/docker-compose.yml" up -d

echo "Rolled back to release: ${RELEASE_ID}"
