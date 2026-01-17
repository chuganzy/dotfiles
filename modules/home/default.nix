{
  inputs,
  ...
}:

{
  imports = [
    inputs._1password-shell-plugins.hmModules.default
    ./programs.nix
    ./packages.nix
  ];

  home = {
    stateVersion = "25.11";
  };
}
