{ pkgs, config, ... }:
{
  windowManager = {
    hyprland = ( import ./hyprland.nix { inherit pkgs config;} );
  };
}
