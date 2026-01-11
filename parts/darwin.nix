{
  inputs,
  lib,
  ...
}:

let
  mkDarwin =
    hostname:
    inputs.nix-darwin.lib.darwinSystem {
      specialArgs = { inherit inputs; };
      modules = [ ../hosts/${hostname} ];
    };

  hosts = [
    "personal-mac"
  ];
in
{
  flake.darwinConfigurations = lib.genAttrs hosts mkDarwin;
  systems = [ "aarch64-darwin" ];
}
