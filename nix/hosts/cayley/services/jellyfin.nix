{ pkgs, ... }:

{
  package = pkgs.jellyfin;
  enable = true;

  user = "alec";

  openFirewall = true;
}
