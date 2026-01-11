{
  inputs,
  ...
}:

{
  nixpkgs = {
    hostPlatform = "aarch64-darwin";

    overlays = [
      inputs.brew-nix.overlays.default
    ];

    config.allowUnfree = true;
  };
}
