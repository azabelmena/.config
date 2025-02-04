{ pkgs, lib, ... }:
let

  image = pkgs.fetchurl {
    url = "https://github.com/azabelmena/Wallpapers/blob/main/gruvbox/gruvbox-mountain-village.png?raw=true";
    hash = "sha256-JNzIzoF6JWSofgIpgs47tj7GUl8sCJrwLmd91EGc0Po=";
  };

in
{

  enable = true;
  package = pkgs.hyprlock;

  settings = lib.mkDefault {
    general = {
      disable_loading_bar = false;
      grace = 5;
      hide_cursor = true;
      no_fade_in = false;
      no_fade_out = false;
      ignore_empty_input = false;
#pam_module = "hyprlock";
      fractional_scaling = 1;
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
