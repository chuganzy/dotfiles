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
    ninja
    tree
    zstd
  ];
}
