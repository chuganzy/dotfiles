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
    ni
    ninja
    tree
    zstd
  ];
}
