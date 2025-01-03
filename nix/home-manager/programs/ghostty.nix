{ pkgs, ... }:
{
  enable = true;

  package = pkgs.ghostty;

  settings = {
    title = "";
    gtk-titlebar = false;
    gtk-adwaita = false;
  };
}
