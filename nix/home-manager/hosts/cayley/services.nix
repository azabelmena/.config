{ pkgs, config, ... }:
{
  mako = ( import ../../programs/mako.nix { inherit pkgs config; } );
  wlsunset = ( import ../../programs/wlsunset.nix { inherit pkgs; } );
  hyprpaper = ( import ../../programs/hypr.nix/hyprpaper.nix { inherit pkgs; } );
}
