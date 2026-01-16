{
  inputs,
  config,
  pkgs,
  lib,
  ...
}:

let
  username = config.system.primaryUser;
  homeDirectory = config.users.users.${username}.home;
  androidSdkRoot = "${homeDirectory}/Library/Android/sdk";
in
{
  imports = [ inputs.home-manager.darwinModules.home-manager ];

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.${username} = {
      imports = [
        ./../home
      ];

      home = {
        inherit username homeDirectory;
        packages = with pkgs; [
          appcleaner
          chatgpt
          ghostty-bin
          monitorcontrol
          xcodes
          brewCasks.android-studio
          brewCasks.fork
        ];
        sessionVariables = {
          ANDROID_SDK_ROOT = androidSdkRoot;
        };
        sessionPath = [
          "${androidSdkRoot}/emulator"
          "${androidSdkRoot}/platform-tools"
        ];
      };
    };
  };
}
