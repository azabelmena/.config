{ pkgs, ... }:

let
  imgLink = "https://github.com/azabelmena/Wallpapers/blob/main/gruvbox-mountain-village.png?raw=true";

  image = pkgs.fetchurl {
    url = imgLink;
    hash = "sha256-JNzIzoF6JWSofgIpgs47tj7GUl8sCJrwLmd91EGc0Po=";
  };
in
{

  enable = true;
  package = pkgs.hyprpaper;

  settings = {
    ipc = "on";
    splash = true;
    splash_offset = 2.0;

    preload = [
      "${image}"
    ];

    wallpaper = [
      "HDMI-A-1,${image}"
    ];

  };

}
