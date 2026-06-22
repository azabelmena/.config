{ pkgs, lib, ... }:
{
  hostName = "fermat";
  networkmanager.enable = lib.mkDefault false;
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
