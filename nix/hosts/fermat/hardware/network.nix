{ pkgs, ... }:
{
  hostName = "fermat";
  networkmanager.enable = false;
  firewall = {
    enable = true;

    allowPing = false;
    pingLimit = "--limit 0/minute --limit-burst 0";

    allowedTCPPorts = [
      80
      443
    ];
  };
}
