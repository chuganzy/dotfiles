{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    aria2
    discord
    google-chrome
    jq
    just
    libyaml
    spotify
    tree
    zstd
  ];
}
