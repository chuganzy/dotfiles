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
      "google-chrome"
      "hopper-disassembler"
      "fork"
      "logi-options+"
      "monitorcontrol"
      "visual-studio-code"
    ];
  };
}
