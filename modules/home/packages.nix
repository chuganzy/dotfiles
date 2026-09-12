{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    aria2
    cue
    jq
    just
    libyaml
    ni
    ninja
    nixfmt
    tree
    watchman
    zstd
  ];
}
