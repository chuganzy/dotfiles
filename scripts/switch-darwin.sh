#!/usr/bin/env bash
set -euo pipefail

IDENTIFIER="${1:-}"

if [ -z "$IDENTIFIER" ]; then
  echo "Usage: $0 <identifier>"
  exit 1
fi

PROJECT_ROOT=$(cd "$(dirname "$0")/.."; pwd)

"$PROJECT_ROOT/scripts/build-darwin.sh" "$IDENTIFIER"
sudo "$PROJECT_ROOT/result/sw/bin/darwin-rebuild" switch --flake "$PROJECT_ROOT#darwin-$IDENTIFIER"
