{ pkgs, config, ... }:
let

  wallpaper = pkgs.fetchurl {
    url = "https://github.com/azabelmena/Wallpapers/blob/main/gruvbox/gruvbox-mountain-village.png?raw=true";
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
      package = google-fonts;
      name = "Spectral";
    };
    sansSerif = config.stylix.fonts.serif;
    monospace = {
      package = google-fonts;
      name = "IBMPlexMono-Regular";
    };

    emoji = {
      package = nerd-fonts.noto;
      name = "NotoSerifNerdFont-Regular";
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
