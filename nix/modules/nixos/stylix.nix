{ pkgs, ... }:
let

  wallpaper = pkgs.fetchurl {
    url = "https://github.com/azabelmena/Wallpapers/blob/main/everforest/everforest-nix.png?raw=true";
    hash = "sha256-kqnftHPhtSnLcJzAB1ksGivVkOiNf5uGXcEkr7UTgTM=";
  };
in
{

  enable = true;
  autoEnable = true;

  image = "${wallpaper}";

  base16Scheme = "${pkgs.base16-schemes}/share/themes/everforest.yaml";

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
