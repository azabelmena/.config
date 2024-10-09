{ config, ... }:
let
  home = config.home-manager.users.alec.home.homeDirectory;
  host = config.networking.hostName;
in
{

  defaultSopsFile = /${home}/secrets/secrets.yaml;
  validateSopsFiles = false;

  age = {
    sshKeyPaths = [
      #/etc/ssh/ssh_host_ed25519_key
      /${home}/secrets/sops/age/sophie/id_ed25519
    ];

    keyFile = "${home}/secrets/sops/age/${host}/keys.txt";

    generateKey = true;
  };

  secrets = {
    alec-password = {
      neededForUsers = true;
    };

  };

}
