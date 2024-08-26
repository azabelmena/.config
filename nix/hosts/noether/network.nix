{ pkgs, lib, ... }:
{
  computerName = "noether";
  hostName = "noether";

  knownNetworkServices = [
    "Thunderbolt Bridge"
    "Wi-Fi"
    "Tailscale"
  ];
}
