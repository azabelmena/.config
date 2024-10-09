{ inputs, config, ... }:
let
  secretsDir = builtins.toString inputs.secrets;
  home = config.home-manager.users.alec.home.homeDirectory;
  host = config.networking.hostName;
in
{

  defaultSopsFile = "${secretsDir}/secrets.yaml";

  validateSopsFiles = true;

  age = {
    sshKeyPaths = [
      /etc/ssh/ssh_host_ed25519_key
    ];

    keyFile = "/var/lib/sops-nix/keys.txt";
    generateKey = true;
  };

  secrets = {
    alec-password = {
      neededForUsers = true;
    };

  };

}
