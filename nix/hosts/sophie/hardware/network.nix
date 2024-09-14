{ pkgs, lib, ... }:
{

  interfaces = {
    enp3s0.useDHCP = true;
    wlo1.useDHCP = false;
  };

  hostName = "sophie";
  networkmanager = {
    enable = true;
    dns = "default";
    logLevel = "INFO";
  };
  firewall = {
    package = pkgs.iptables-legacy;
    enable = true;
    allowPing = true;
    pingLimit = "--limit 1/minute --limit-burst 5";

    allowedTCPPorts = [
    ];
    allowedUDPPorts = [
    ];
  };
}
