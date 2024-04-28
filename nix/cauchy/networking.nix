{ pkgs, ... }:
{
  interfaces = {
    enp7s0.useDHCP = true;
    wlp0s20f3.useDHCP = true;
  };
  hostName = "cauchy";
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
      1024
      443
      80
    ];
    allowedUDPPorts = [
      443
      80
    ];
  };
}
