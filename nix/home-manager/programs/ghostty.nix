{ pkgs, ... }:
{
  enable = true;

  package = pkgs.ghostty;

  settings = {
    title = "I Love being Ghostted";
    gtk-titlebar = false;
    gtk-adwaita = false;
  };
}
