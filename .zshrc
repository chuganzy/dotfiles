# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Android
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator"
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"

# Dart
export PATH="$PATH:~/.pub-cache/bin"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# rbenv
eval "$(rbenv init - zsh)"

# alias
alias dev='cd ~/Developer'
alias be='bundle exec'
