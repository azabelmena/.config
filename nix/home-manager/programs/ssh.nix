{ config, ... }:
let
home = config.home.homeDirectory;
in
{
  enable = true;

  matchBlocks = {
    "git" = {
      host = "github.com";
      identitiesOnly = true;
      identityFile = [
        "${home}/.ssh/id_github"
      ];
    };

    "boqueron" = {
      host = "boqueron.hpcf.upr.edu";
      port = 22;
      identitiesOnly = true;
      identityFile = [
        "${home}/.ssh/id_boqueron"
      ];
      extraOptions = {
        HostKeyAlgorithms = "=+ssh-rsa";
        ConnectTimeout = "10";
        PasswordAuthentication = "no";
      };
    };

    "matricula" = {
      host = "136.145.180.92";
      user = "matricula";
      port = 2046;
      extraOptions = {
        KexAlgorithms = "=+diffie-hellman-group14-sha1";
        HostKeyAlgorithms = "=+ssh-rsa";
        Ciphers = "=+aes128-cbc";
        ConnectTimeout = "10";
        PasswordAuthentication = "yes";
      };
    };

    "cayley" = {
      host = "cayley.angora-hammerhead.ts.net";
      user = "matricula";
      port = 16384;
      identitiesOnly = true;
      identityFile = [
        "${home}/.ssh/id_cayley"
      ];
      extraOptions = {
        KexAlgorithms = "=+diffie-hellman-group14-sha1";
        HostKeyAlgorithms = "=+ssh-rsa";
        Ciphers = "=+aes128-cbc";
        ConnectTimeout = "10";
        PasswordAuthentication = "no";
      };
    };
  };

}
