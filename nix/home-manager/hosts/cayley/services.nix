{ pkgs, config, ... }:
{
  mako = ( import ../../programs/mako.nix { inherit pkgs config; } );
  hyprlauncher = (import ../../programs/hypr.nix/hyprlauncher.nix { inherit pkgs; });
  hyprpaper = ( import ../../programs/hypr.nix/hyprpaper.nix { inherit pkgs; } );
  hyprsunset = ( import ../../programs/hypr.nix/hyprsunset.nix { inherit pkgs; } );
}
