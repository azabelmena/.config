{ config, pkgs, inputs, lib, ... }:  # CAYLEY NIX!

{
  imports = [
    inputs.niri.homeModules.niri
    inputs.nix-colors.homeManagerModules.default
    inputs.nixvim.homeModules.nixvim
    inputs.noctalia.homeModules.default
  ];
  colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-soft;

  home = ( import ./home.nix { inherit pkgs config lib; } );

  wayland = ( import ../../programs/wayland.nix { inherit pkgs config; } );

  programs = ( import ./programs.nix { inherit pkgs config lib; } );

  xdg = ( import ../../../modules/nixos/misc/xdg.nix { inherit pkgs config; });

  dconf = ( import ../../../modules/nixos/misc/dconf.nix );
}
