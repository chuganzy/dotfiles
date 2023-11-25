# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Android
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator"
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$PATH:$BUN_INSTALL/bin"

# Dart
export PATH="$PATH:~/.pub-cache/bin"

# LLVM-16
export PATH="$PATH:$(brew --prefix llvm@16)/bin"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# rbenv
eval "$(rbenv init - zsh)"

# local
export PATH="$PATH:$HOME/.local/bin"

# alias
alias dev='cd ~/Developer'
alias be='bundle exec'
