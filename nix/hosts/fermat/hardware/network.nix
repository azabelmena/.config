{ pkgs, ... }:
{
  hostName = "fermat";
  networkmanager.enable = true;
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
