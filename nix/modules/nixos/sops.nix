{ inputs, config, ... }:
let
  secret = builtins.toString inputs.secrets;
  home = config.home-manager.users.alec.home.homeDirectory;
in
{

  defaultSopsFile = "${secret}/secrets.yaml";

  validateSopsFiles = true;

  age = {
    sshKeyPaths = [
      /etc/ssh/ssh_host_ed25519_key
    ];

    keyFile = "${home}/sops/age/keys.txt";
    generateKey = true;
  };

  secrets = {
    alec-password = {
      neededForUsers = true;
    };

  };

}
