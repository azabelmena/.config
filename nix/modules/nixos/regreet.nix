{ pkgs, lib, ... }:
let

  image = pkgs.fetchurl {
    url = "https://github.com/azabelmena/Wallpapers/blob/main/everforest/forest.jpg?raw=true";
    hash = "sha256-0qsX/k30zv3UmLuK2sQWKeSjH84klLtCj3M0FWJ+udk=";
  };

in
{

  enable = true;
  package = pkgs.greetd.regreet;

  theme = lib.mkForce {
    name = "Everforest-Dark-BL";
    package = pkgs.everforest-gtk-theme;
  };

  settings = {
    background = lib.mkForce {
      path = "${image}";
      fit = "Fill";
    };
  };
}
