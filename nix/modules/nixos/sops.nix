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
      /${home}/.ssh/id_sops
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
