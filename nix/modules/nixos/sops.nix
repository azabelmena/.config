{ config, ... }:
let
  user = "~/.config/sops/age/";
  host = "${config.networking.hostName}";
in
{

  defaultSopsFile = ../../../secrets.yaml;
  validateSopsFiles = false;

  age = {
    sshKeyPaths = [
      /etc/ssh/ssh_host_ed25519_key
    ];

    keyFile = "${user}/${host}keys.txt";

    generateKey = true;
  };

  secrets = {
    alec-password = {
      neededForUsers = true;
    };

    eletrico-password = {
      neededForUsers = true;
    };
  };

}
