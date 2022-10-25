{ self, hmUsers, ... }:
{
  home-manager.users = { inherit (hmUsers) nixos; };
  age.secrets.blob-password.file = "${self}/secrets/blob-password.age";

  users.users.blob =
    let
      passwordFile = "/run/agenix/blob-password";
    in
    {
      passwordFile = passwordFile;
      description = "default user with sudo powers";
      isNormalUser = true;
      extraGroups = [ "wheel" ];
    };

  home-manager.users.blob = { suites, ... }:
    {
      imports = suites.cli;
    };
}
