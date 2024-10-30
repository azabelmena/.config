{ pkgs, ... }:
let
  imgLink = "https://github.com/azabelmena/Wallpapers/blob/main/gruvbox-mountain-village.png?raw=true";

  wallpaper = pkgs.fetchurl {
    url = imgLink;
    hash = "sha256-JNzIzoF6JWSofgIpgs47tj7GUl8sCJrwLmd91EGc0Po=";
  };
in
{

  enable = true;
  autoEnable = true;

  image = "${wallpaper}";

  base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-soft.yaml";

  fonts = with pkgs; {

    serif = {
      package = ibm-plex;
      name = "IBMPlexMono-Regular";
    };

    sansSerif = {
      package = ibm-plex;
      name = "IBMPlexMono-Regular";
    };

    monospace = {
      package = ibm-plex;
      name = "IBMPlexMono-Regular";
    };

    emoji = {
      package = noto-fonts-emoji;
      name = "Noto Color Emoji";
    };

    sizes = {
      applications = 12;
      desktop = 12;
      popups = 12;
      terminal = 12;
    };
  };

  cursor = with pkgs; {
    package = google-cursor;
    name = "GoogleDot-Black";
    size = 24;
  };

}
