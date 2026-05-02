{ pkgs, ... }:

{
  package = pkgs.jellyfin;
  enable = true;

  user = "alec";

  configDir = "/home/alec/.config/jellyfin";

  openFirewall = true;
}
