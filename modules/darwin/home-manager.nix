{
  inputs,
  config,
  pkgs,
  lib,
  ...
}:

{
  imports = [ inputs.home-manager.darwinModules.home-manager ];

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.${config.system.primaryUser} = {
      imports = [
        ./../home
      ];

      home = {
        username = config.system.primaryUser;
        homeDirectory = config.users.users.${config.system.primaryUser}.home;
        packages = with pkgs; [
          appcleaner
          chatgpt
          monitorcontrol
          xcodes
          brewCasks.android-studio
          brewCasks.fork
          brewCasks.ghostty
        ];
      };
    };
  };
}
