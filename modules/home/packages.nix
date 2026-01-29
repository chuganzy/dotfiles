{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    aria2
    cue
    github-copilot-cli
    jq
    just
    libyaml
    ni
    ninja
    tree
    watchman
    zstd
  ];
}
