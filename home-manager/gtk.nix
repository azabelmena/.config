{ pkgs, ... }:

{
  enable = true;

  theme = {
  package = pkgs.gruvbox-dark-gtk;
  name = "gruvbox-dark";
  };

  cursorTheme = {
  package = pkgs.google-cursor;
  name = "GoogleDot-Black";
  size = 16;
  };

  iconTheme = {
    #package = pkgs.gnome.adwaita-icon-theme;
    package = pkgs.papirus-icon-theme;
    name = "Papirus";
  };
}
