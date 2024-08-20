{ pkgs, ... }:
{
  hostName = "lovelace";
  networkmanager.enable = true;
  firewall = {
    enable = true;
    allowedTCPPorts = [
      22
      80
      443
      1024
      53317
    ];
    allowedUDPPorts = [
      22
      80
      443
      53317
    ];
  };
}
