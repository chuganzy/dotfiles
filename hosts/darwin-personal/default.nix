{
  config,
  ...
}:

{
  system.primaryUser = "ganzy";

  imports = [
    ../../modules/darwin
  ];

  homebrew = {
    casks = [
      "blender"
      "discord"
      "epic-games"
      "spotify"
      "steam"
      "tailscale-app"
    ];
  };
}
