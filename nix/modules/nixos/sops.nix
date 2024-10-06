{

  defaultSopsFile = ../../../secrets.yaml;
  validateSopsFiles = false;

  age = {
    sshKeyPaths = [
      /etc/ssh/ssh_host_ed25519_key
    ];

    keyFile = "~/.config/sops/age/keys.txt";

    generateKey = true;
  };

  secrets = {
    alec-password = {
      neededForUsers = true;
    };

  };

}
