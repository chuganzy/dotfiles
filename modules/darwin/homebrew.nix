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
      "chatgpt"
      "firefox"
      "ghostty"
      "github-copilot-for-xcode"
      "google-chrome"
      "hopper-disassembler"
      "fork"
      "logi-options+"
      "visual-studio-code"
    ];
  };
}
