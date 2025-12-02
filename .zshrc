# Homebrew
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

# mise
eval "$(mise activate zsh)"

# Android
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator"
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"

# Flutter
if mise where flutter &> /dev/null; then
  export FLUTTER_ROOT="$(mise where flutter)"
fi

# local
export PATH="$PATH:$HOME/.local/bin"

# alias
alias dev='cd ~/Developer'
alias be='bundle exec'
