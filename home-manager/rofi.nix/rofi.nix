{ pkgs, config, lib, ... }:
{
  package = pkgs.rofi-wayland;
  enable = true;

  #font = "BlexMono Nerd Font Bold 12";
  #theme = ( import ./theme.nix { inherit pkgs config lib; } );

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
