#!/usr/bin/env bash
set -euo pipefail

curl -fsSL https://install.determinate.systems/nix | sh -s -- install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
