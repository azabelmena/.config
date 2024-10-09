{ config, ... }:
let
  host = config.networking.hostName;
in
{

  defaultSopsFile = ../../../../secrets/secrets.yaml;
  validateSopsFiles = false;

  age = {
    sshKeyPaths = [
      #/etc/ssh/ssh_host_ed25519_key
      ../../../secrets/sops/age/sophie/id_ed25519
    ];

    keyFile = "~/secrets/sops/age/${host}/keys.txt";

    generateKey = true;
  };

  secrets = {
    alec-password = {
      neededForUsers = true;
    };

  };

}
