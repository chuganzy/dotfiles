#!/usr/bin/env bash
set -euo pipefail

IDENTIFIER="${1:-}"

if [ -z "$IDENTIFIER" ]; then
  echo "Usage: $0 <identifier>"
  exit 1
fi

PROJECT_ROOT=$(cd "$(dirname "$0")/.."; pwd)

nix run nix-darwin -- build --flake "$PROJECT_ROOT#darwin-$IDENTIFIER"
