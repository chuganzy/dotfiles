{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    _1password-cli
    _1password-gui
    aria2
    google-chrome
    jq
    libyaml
    zstd
  ];
}
