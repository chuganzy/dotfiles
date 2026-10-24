{
  ...
}:

{
  homebrew = {
    enable = true;
    onActivation = {
      cleanup = "zap";
    };

    casks = [
      "1password"
      "1password-cli"
      "android-studio"
      "antigravity"
      "antigravity-cli"
      "chatgpt"
      "claude"
      "claude-code"
      "codex"
      "figma"
      "firefox"
      "fork"
      "ghostty"
      "google-chrome"
      "hopper-disassembler"
      "icon-composer"
      "karabiner-elements"
      "logi-options+"
      "sf-symbols"
      "visual-studio-code"
      "xcodes-app"
    ];
  };
}
