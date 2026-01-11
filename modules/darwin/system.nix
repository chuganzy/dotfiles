{
  config,
  ...
}:

{
  nix.enable = false;
  users.users.${config.system.primaryUser}.home = "/Users/${config.system.primaryUser}";

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
