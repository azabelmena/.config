{ pkgs, ... }:
{
  enable = true;
  package = pkgs.tailscale;

  openFirewall = true;

  useRoutingFeatures = "server";

  port = 41641;
}
