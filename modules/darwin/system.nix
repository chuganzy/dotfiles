{
  config,
  ...
}:
let
  username = config.system.primaryUser;
  homeDirectory = "/Users/${username}";
in
{
  nix.enable = false;
  users.users.${username}.home = homeDirectory;

  system = {
    stateVersion = 5;

    defaults = {
      ".GlobalPreferences"."com.apple.mouse.scaling" = 3.0;
      NSGlobalDomain = {
        AppleEnableMouseSwipeNavigateWithScrolls = true;
        AppleEnableSwipeNavigateWithScrolls = true;
        KeyRepeat = 2;
        InitialKeyRepeat = 15;
        "com.apple.trackpad.scaling" = 3.0;
      };
      dock = {
        tilesize = 36;
        largesize = 72;
        magnification = true;
        show-recents = false;
        showAppExposeGestureEnabled = true;
        wvous-tr-corner = 6;
        persistent-apps = [
          "/Applications/Google Chrome.app"
          "/Applications/ChatGPT.app"
          "/Applications/Discord.app"
          "/Applications/Spotify.app"
          "/System/Applications/Calendar.app"
          "/Applications/Fork.app"
          "/Applications/Ghostty.app"
          "/Applications/Visual Studio Code.app"
          "/Applications/Android Studio.app"
        ];
        persistent-others = [
          "${homeDirectory}/Downloads"
          {
            folder = {
              path = "${homeDirectory}/Developer";
              showas = "list";
            };
          }
        ];
      };
      finder = {
        FXPreferredViewStyle = "clmv";
      };
      trackpad = {
        ActuateDetents = false;
        Clicking = true;
        Dragging = true;
        TrackpadThreeFingerHorizSwipeGesture = 1;
      };
      CustomUserPreferences = {
        "com.apple.dock".wvous-tr-modifier = 0;
      };
    };
  };
}
