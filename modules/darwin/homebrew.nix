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
      "karabiner-elements"
      "logi-options+"
      "visual-studio-code"
      "xcodes-app"
    ];
  };
}
