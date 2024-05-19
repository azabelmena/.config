{ pkgs, ... }:
let
  imgLink = "https://github.com/azabelmena/Wallpapers/blob/main/gruvbox-mountain-village.png?raw=true";

  wallpaper = pkgs.fetchurl {
    url = imgLink;
    sha256 = "1ynhki0x8zb75vq9l21cbx9ccgmn7g784a82gsl689bsh77cip14";
  };
in
{

  image = "${wallpaper}";

  polarity = "dark";

  base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-soft.yaml";

  fonts = with pkgs; {

    serif = {
      package = dejavu_fonts;
      name = "DejaVu Serif";
    };

    sansSerif = {
      package = dejavu_fonts;
      name = "DejaVu Sans";
    };

    monospace = {
      package = ibm-plex;
      name = "IBMPlexMono-Regular";
    };

    emoji = {
      package = noto-fonts-emoji;
      name = "Noto Color Emoji";
    };
  };

  cursor = with pkgs; {
    package = google-cursor;
    name = "GoogleDot-Black";
  };

}
