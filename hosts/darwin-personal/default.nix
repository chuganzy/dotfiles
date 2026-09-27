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
      "tailscale-app"
    ];
  };
}
