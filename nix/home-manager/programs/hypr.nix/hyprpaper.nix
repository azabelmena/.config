{ pkgs, ... }:

let

  image = pkgs.fetchurl {
    url = "https://github.com/azabelmena/Wallpapers/blob/main/gruvbox/gruvbox-mountain-village.png?raw=true";
    hash = "sha256-JNzIzoF6JWSofgIpgs47tj7GUl8sCJrwLmd91EGc0Po=";
  };

in
{

  enable = true;
  package = pkgs.hyprpaper;

  settings = {
    ipc = true;
    splash = false;
    splash_offset = 0;

    preload = [
      "${image}"
    ];

    wallpaper = [
      "HDMI-A-1,${image}"
      "eDP-1,${image}"
    ];

  };

}
