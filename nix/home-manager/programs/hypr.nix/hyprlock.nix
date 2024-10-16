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
  package = pkgs.hyprlock;

  settings = {
    general = {
      disable_loading_bar = false;
      grace = 5;
      hide_cursor = true;
      no_fade_in = false;
      no_fade_out = false;
      ignore_empty_input = true;
      pam_module = "hyprlock";
      fractional_scaling = 2;
    };

    background = [
      {
        path = "${image}";
        blur_passes = 3;
        blur_size = 8;
      }
    ];

    input-field = [
      {
        size = "200, 50";
        position = "0, -80";
        monitor = "";
        dots_center = true;
        fade_on_empty = true;
        shadow_passes = 2;
      }
    ];
  };

}
