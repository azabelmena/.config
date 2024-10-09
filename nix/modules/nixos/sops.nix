{ inputs, config, ... }:
let
  secret = builtins.toString inputs.secrets;
in
{

  defaultSopsFile = "${secret}/secrets.yaml";

  validateSopsFiles = false;

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
