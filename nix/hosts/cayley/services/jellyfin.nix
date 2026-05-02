{ pkgs, ... }:

{
  package = pkgs.jellyfin;
  enable = true;

  user = "alec";

  configDir = "/home/alec/.config/jellyfin";
  cacheDir = "/home/alec/.cache/jellyfin";
  dataDir = "/home/alec/.config/jellyfin/data";

  hardwareAcceleration = {
    enable = true;
    device = "/dev/dri/renderD128";
    type = "nvenc";
  };

  transcoding = {
    enableHardwareEncoding = true;
    enableSubtitleExtraction = true;
    threadCount = 4;
    maxConcurrentStreams = 2;
  };

  openFirewall = true;
}
