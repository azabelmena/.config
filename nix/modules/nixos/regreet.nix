{ pkgs, lib, ... }:
let

  image = pkgs.fetchurl {
    url = "https://github.com/azabelmena/Wallpapers/blob/main/gruvbox/gruvbox-mountain-village.png?raw=true";
    hash = "sha256-JNzIzoF6JWSofgIpgs47tj7GUl8sCJrwLmd91EGc0Po=";
  };

in
{

  enable = true;
  package = pkgs.regreet;

  theme = lib.mkForce {
    name = "Gruvbox-Dark";
    package = pkgs.gruvbox-gtk-theme;
  };

  settings = {
    background = lib.mkForce {
      path = "${image}";
      fit = "Fill";
    };
  };
}
