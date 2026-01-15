{
  config,
  ...
}:

{
  system.primaryUser = "ganzy";

  imports = [
    ../../modules/darwin
  ];
}
