#!/usr/bin/env bash

set -e

# Ensure uv (installed via mise or Homebrew) is on PATH.
export PATH="${HOME}/.local/bin:${PATH:-}"

if ! command -v uv >/dev/null 2>&1; then
  echo "Error: uv not found on PATH. Run './install' (default or 'all') or 'mise install' to install uv first." >&2
  exit 1
fi

uv tool install isort
uv tool install black
uv tool install llm
uv tool install rich-cli
uv tool install ruff
uv tool install virtualenv

