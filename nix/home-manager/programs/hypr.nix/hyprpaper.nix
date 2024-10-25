{ pkgs, ... }:

let

  image = pkgs.fetchurl {
    url = "https://github.com/azabelmena/Wallpapers/blob/main/cat-10-e1573844975155.jpg?raw=true";
    hash = "sha256-nXJSDjjKfcDNio8c/PB2767swiGHzK/mlurmr6J6tHI=";
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
