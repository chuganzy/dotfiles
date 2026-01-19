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

      programs.git.settings.gpg.ssh.program = "/Applications/1Password.app/Contents/MacOS/op-ssh-sign";
      programs.ssh.matchBlocks."*".identityAgent =
        "\"~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock\"";
    };
  };
}
