{
  config,
  ...
}:

{
  imports = [
    ../../modules/darwin
  ];

  system.primaryUser = "takeru.chuganji";
  users.users.${config.system.primaryUser} = {
    uid = 502;
  };
}
