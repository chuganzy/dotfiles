# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# asdf
. $(brew --prefix asdf)/libexec/asdf.sh
export ASDF_NODEJS_LEGACY_FILE_DYNAMIC_STRATEGY=latest_installed

# Android
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator"
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$PATH:$BUN_INSTALL/bin"

# Flutter
export FLUTTER_ROOT="$(asdf where flutter)"

# LLVM-16
export PATH="$PATH:$(brew --prefix llvm@16)/bin"

# local
export PATH="$PATH:$HOME/.local/bin"

# alias
alias dev='cd ~/Developer'
alias be='bundle exec'
