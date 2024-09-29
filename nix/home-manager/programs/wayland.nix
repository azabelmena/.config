{ pkgs, config, ... }:
{
  windowManager = {
    hyprland = ( import ./hypr.nix/hyprland.nix { inherit pkgs; } );
  };
}
