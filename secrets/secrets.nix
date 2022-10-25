let
  # set ssh public keys here for your system and user
  system = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBKdWofniKpekpXXmfHjxYs9n7t7vHjKk9B/vpOk2wVa";
  user = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKqbi+i1JttUl5UZd4zjtEyPRkvFqCsO2Sn9zR3HWOXs";
  allKeys = [ system user ];
in
{
  "secret.age".publicKeys = allKeys;
  "blob-password.age".publicKeys = allKeys;
}
