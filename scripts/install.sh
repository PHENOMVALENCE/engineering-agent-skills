#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="${HOME}/.cursor/skills"

mkdir -p "${TARGET_DIR}"
cp -R "${ROOT_DIR}/skills/." "${TARGET_DIR}/"

echo "Installed PHENOMVALENCE engineering skills to: ${TARGET_DIR}"
echo "Restart/reload Cursor if the skills are not discovered immediately."
