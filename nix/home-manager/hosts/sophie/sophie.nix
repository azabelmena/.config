{ config, pkgs, inputs, lib, ... }:

{
  imports = [
    inputs.nix-colors.homeManagerModules.default
    inputs.nixvim.homeModules.nixvim
    inputs.noctalia.homeModules.default
    inputs.umbriel.homeModules.default
  ];
  colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-soft;

  home = ( import ./home.nix { inherit pkgs config lib; } );

  programs = ( import ./programs.nix { inherit pkgs config lib; } );

  xdg = ( import ../../../modules/nixos/misc/xdg.nix { inherit pkgs config; });

  dconf = ( import ../../../modules/nixos/misc/dconf.nix );
}
