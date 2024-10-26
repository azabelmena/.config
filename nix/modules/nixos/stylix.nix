{ pkgs, ... }:
let
  imgLink = "https://github.com/azabelmena/Wallpapers/blob/main/gruvbox-mountain-village.png?raw=true";

  wallpaper = pkgs.fetchurl {
    url = imgLink;
    sha256 = "1ynhki0x8zb75vq9l21cbx9ccgmn7g784a82gsl689bsh77cip14";
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
      applications = 18;
      desktop = 18;
      popups = 18;
      terminal = 18;
    };
  };

  cursor = with pkgs; {
    package = google-cursor;
    name = "GoogleDot-Black";
    size = 24;
  };

}
