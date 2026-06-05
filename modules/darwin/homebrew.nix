{
  ...
}:

{
  homebrew = {
    enable = true;
    onActivation.cleanup = "zap";

    casks = [
      "1password"
      "1password-cli"
      "android-studio"
      "appcleaner"
      "codex-app"
      "firefox"
      "ghostty"
      "google-chrome"
      "google-gemini"
      "hopper-disassembler"
      "fork"
      "logi-options+"
      "visual-studio-code"
    ];
  };
}
