{ pkgs, ... }:

let

  image = pkgs.fetchurl {
    url = "https://github.com/azabelmena/Wallpapers/blob/main/tokyo-night/tokyo-night2.jpg?raw=true";
    hash = "sha256-O6EC785GMUw6rTU2V4VxuZ7Th7lMIOQZqT1zidT1cf8=";
  };

in
{

  enable = true;
  package = pkgs.hyprpaper;

  settings = {
    ipc = "on";
    splash = false;
    splash_offset = 0.0;

    preload = [
      "${image}"
    ];

    wallpaper = [
      "HDMI-A-1,${image}"
      "eDP-1,${image}"
    ];

  };

}
