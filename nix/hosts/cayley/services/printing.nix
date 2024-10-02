{
  enable = false;
  startWhenNeeded = false;
  stateless = true;
  tempDir = "/tmp/cups";

  allowFrom = [
    "127.0.0.1"
  ];

  listenAddresses = [
    "127.0.0.1:53317"
  ];

  openFirewall = false;
  logLevel = "info";
}
