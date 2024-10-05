{ pkgs, lib, ... }:
{

  interfaces = {
    wlp1s0.useDHCP = lib.mkDefault true;
  };

  hostName = "nixos";
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
