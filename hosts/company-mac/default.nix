{
  config,
  ...
}:

{
  system.primaryUser = "takeru.chuganji";

  imports = [
    ../../modules/darwin
  ];
}
