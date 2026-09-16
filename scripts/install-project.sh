#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
STACK="${1:-}"
PROJECT_DIR="${2:-$(pwd)}"

if [[ -z "${STACK}" ]]; then
  echo "Usage: $0 <laravel|nextjs|laravel-nextjs|nextjs-supabase> [project-path]" >&2
  exit 1
fi

STACK_FILE="${ROOT_DIR}/stacks/${STACK}/AGENTS.md"
if [[ ! -f "${STACK_FILE}" ]]; then
  echo "Unknown stack: ${STACK}" >&2
  exit 1
fi

mkdir -p "${PROJECT_DIR}/.cursor/skills" "${PROJECT_DIR}/.cursor/rules" "${PROJECT_DIR}/.github"
cp -R "${ROOT_DIR}/skills/." "${PROJECT_DIR}/.cursor/skills/"
cp -R "${ROOT_DIR}/.cursor/rules/." "${PROJECT_DIR}/.cursor/rules/"

TMP_AGENTS="$(mktemp)"
cat "${ROOT_DIR}/AGENTS.md" > "${TMP_AGENTS}"
printf '\n\n---\n\n' >> "${TMP_AGENTS}"
cat "${STACK_FILE}" >> "${TMP_AGENTS}"

if [[ -e "${PROJECT_DIR}/AGENTS.md" ]]; then
  mv "${TMP_AGENTS}" "${PROJECT_DIR}/AGENTS.toolkit.md"
  echo "Existing AGENTS.md preserved; generated AGENTS.toolkit.md for manual merge."
else
  mv "${TMP_AGENTS}" "${PROJECT_DIR}/AGENTS.md"
fi

copy_if_missing() {
  local source="$1"
  local target="$2"
  if [[ ! -e "${target}" ]]; then
    cp "${source}" "${target}"
  fi
}

copy_if_missing "${ROOT_DIR}/templates/PROJECT.md" "${PROJECT_DIR}/PROJECT.md"
copy_if_missing "${ROOT_DIR}/templates/ARCHITECTURE.md" "${PROJECT_DIR}/ARCHITECTURE.md"
copy_if_missing "${ROOT_DIR}/templates/CONTRIBUTING.md" "${PROJECT_DIR}/CONTRIBUTING.md"
copy_if_missing "${ROOT_DIR}/templates/SECURITY.md" "${PROJECT_DIR}/SECURITY.md"
copy_if_missing "${ROOT_DIR}/templates/PULL_REQUEST_TEMPLATE.md" "${PROJECT_DIR}/.github/pull_request_template.md"

echo "Installed ${STACK} agent toolkit into: ${PROJECT_DIR}"
echo "Review generated files before committing them to the project."
