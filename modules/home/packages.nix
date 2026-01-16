{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    aria2
    jq
    just
    libyaml
    tree
    zstd
  ];
}
