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
    extraSpecialArgs = { inherit inputs; };
    users.${username} = {
      imports = [
        ./../home
      ];

      home = {
        inherit username homeDirectory;
        packages = with pkgs; [
          xcodes
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
