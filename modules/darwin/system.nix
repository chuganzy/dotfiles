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

  # WORKAROUND:
  # https://github.com/nix-darwin/nix-darwin/issues/1237
  # knownUsers and uid are required to change the default shell.
  users.knownUsers = [ username ];
  users.users.${username} = {
    home = homeDirectory;
    uid = 501;
  };

  system = {
    stateVersion = 5;

    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToControl = true;
    };

    defaults = {
      ".GlobalPreferences"."com.apple.mouse.scaling" = 3.0;
      NSGlobalDomain = {
        AppleEnableMouseSwipeNavigateWithScrolls = true;
        AppleEnableSwipeNavigateWithScrolls = true;
        AppleInterfaceStyle = "Dark";
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
        wvous-br-corner = 1;
        persistent-apps = [
          "/Applications/Google Chrome.app"
          "/Applications/ChatGPT.app"
          "/Applications/Ghostty.app"
          "/Applications/Visual Studio Code.app"
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
    };
  };
}
