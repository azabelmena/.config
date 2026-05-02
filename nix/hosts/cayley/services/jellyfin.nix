{ pkgs, ... }:

{
  package = pkgs.jellyfin;
  enable = true;

  user = "alec";

  configDir = "/home/alec/.config/jellyfin";
  cacheDir = "/home/alec/.cache/jellyfin";
  dataDir = "/home/alec/.config/jellyfin/data";

  openFirewall = true;
}
