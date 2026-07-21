{ config, ... }:
let
home = config.home.homeDirectory;
in
{
  enable = true;

  enableDefaultConfig = false;

  settings = {
    "github.com" = {
      identitiesOnly = true;
      identityFile = [
        "${home}/.ssh/id_github"
      ];
      addKeysToAgent = "yes";
      hashKnownHosts = true;
      serverAliveInterval = 512;

    };

    "boqueron.hpcf.upr.edu" = {
      port = 22;
      identitiesOnly = true;
      identityFile = [
        "${home}/.ssh/id_boqueron"
      ];
      HostKeyAlgorithms = "=+ssh-rsa";
      ConnectTimeout = "10";
      PasswordAuthentication = "no";
      addKeysToAgent = "yes";
      hashKnownHosts = true;
      serverAliveInterval = 512;

    };

    "cayley.angora-hammerhead.ts.net" = {
      port = 16384;
      identitiesOnly = true;
      identityFile = [
        "${home}/.ssh/id_cayley"
      ];
      KexAlgorithms = "=+diffie-hellman-group14-sha1";
      HostKeyAlgorithms = "=+ssh-rsa";
      Ciphers = "=+aes128-cbc";
      ConnectTimeout = "10";
      PasswordAuthentication = "no";
      addKeysToAgent = "yes";
      hashKnownHosts = true;
      serverAliveInterval = 512;

    };

    "matricula" = {
      host = "136.145.180.92";
      user = "matricula";
      port = 2046;
      KexAlgorithms = "=+diffie-hellman-group14-sha1";
      HostKeyAlgorithms = "=+ssh-rsa";
      Ciphers = "=+aes128-cbc";
      ConnectTimeout = "10";
      PasswordAuthentication = "yes";
      addKeysToAgent = "yes";
      hashKnownHosts = true;
      serverAliveInterval = 512;

    };

    "tartaglia.angora-hammerhead.ts.net" = {
      port = 22;
      identitiesOnly = true;
      identityFile = [
        "${home}/.ssh/id_tartaglia"
      ];
      HostKeyAlgorithms = "=+ssh-rsa";
      ConnectTimeout = "10";
      PasswordAuthentication = "no";
      addKeysToAgent = "yes";
      hashKnownHosts = true;
      serverAliveInterval = 512;
    };

  };

}
