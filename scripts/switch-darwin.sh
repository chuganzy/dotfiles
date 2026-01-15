#!/usr/bin/env bash
set -euo pipefail

HOST="${1:-}"

if [ -z "$HOST" ]; then
  echo "Usage: $0 <hostname>"
  exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
FLAKE_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

"$SCRIPT_DIR/build-darwin.sh" "$HOST"
sudo nix run nix-darwin -- switch --flake "$FLAKE_ROOT#$HOST"
