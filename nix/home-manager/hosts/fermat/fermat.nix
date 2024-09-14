{ config, pkgs, inputs, lib, ... }:  # CAYLEY NIX!

{
  imports = [
    inputs.nix-colors.homeManagerModules.default
    inputs.nixvim.homeManagerModules.nixvim
  ];
  colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-soft;

  home = ( import ./home.nix { inherit pkgs config lib; } );

  programs = ( import ./programs.nix { inherit pkgs config lib; } );

  xdg = ( import ../../../modules/nixos/misc/xdg.nix { inherit pkgs config; });
}
