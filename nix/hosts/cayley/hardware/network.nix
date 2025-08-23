{ pkgs, lib, ... }:
{

  interfaces = {
    enp3s0.useDHCP = true;
    wlo1.useDHCP = true;
  };

  hostName = "cayley";
  networkmanager = {
    enable = true;
    dns = "default";
    logLevel = "INFO";
  };
  firewall = {
    package = pkgs.iptables-legacy;
    enable = false;
    allowPing = true;
    pingLimit = "--limit 1/minute --limit-burst 5";

    allowedTCPPorts = [
      16384
      41641
      53317
    ];
    allowedUDPPorts = [
      41641
      53317
    ];
  };
}
