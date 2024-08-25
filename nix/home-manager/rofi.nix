{ pkgs, config, lib, ... }:
{
  package = pkgs.rofi-wayland;
  enable = true;

  extraConfig = {
    modi = "drun";
    display-drun = "";
    display-window = "";
    show-icons = true;
    icon-theme = "Papirus";
  };

  plugins = [
    pkgs.rofi-calc
  ];
}
