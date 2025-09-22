{ pkgs, ... }:

{
  package = pkgs.navidrome;
  enable = true;

  user = "alec";

  settings = {
    MusicFolder = "/home/alec/Audio/Music";
    Address = "100.125.95.69";
    Port = 4533;
  };

  openFirewall = true;
}
