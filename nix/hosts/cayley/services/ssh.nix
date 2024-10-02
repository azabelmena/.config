{
  enable = false;

  settings = {
    UseDns = false;

    PubKeyAuthentication = false;
    PasswordAuthentication = false;
    KbdInteractiveAuthentication = false;
    PermitRootLogin = "no";

    GatewayPorts = "no";

    AllowGroups = [  ];

    HostKeyAlgorithms = "";
    KexAlgorithms = [
    ];
    Ciphers = [
    ];
    Macs = [
    ];

    AllowTcpForwarding = true;
    LogLevel = "VERBOSE";
  };


  allowSFTP = false;

  ports = [
  ];
}
