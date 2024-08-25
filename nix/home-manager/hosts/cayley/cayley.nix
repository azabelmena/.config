{ config, pkgs, inputs, lib, ... }:  # CAYLEY NIX!

{
  imports = [
    inputs.nix-colors.homeManagerModules.default
    inputs.nixvim.homeManagerModules.nixvim
  ];
  colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-soft;

  home = ( import ./home.nix { inherit pkgs config lib; } );

  wayland = ( import ../../programs/wayland.nix { inherit pkgs config; } );

  services = ( import ./services.nix { inherit pkgs config; } );

  programs = ( import ./programs.nix { inherit pkgs config lib; } );

  xdg = ( import ../../misc/xdg.nix { inherit pkgs config; });

  dconf = ( import ../../misc/dconf.nix);
}
