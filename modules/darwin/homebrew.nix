{
  ...
}:

{
  homebrew = {
    enable = true;
    onActivation = {
      cleanup = "zap";
      extraFlags = [
        "--force-cleanup"
      ];
    };

    casks = [
      "1password"
      "1password-cli"
      "android-studio"
      "codex-app"
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
