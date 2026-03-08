{
  config,
  pkgs,
  ...
}:

{
  programs.fish.enable = true;
  users.users.${config.system.primaryUser}.shell = pkgs.fish;
}
