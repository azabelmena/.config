{ pkgs, config, ... }:
{
  mako = ( import ../../programs/mako.nix { inherit pkgs config; } );
  swayidle = ( import ../../programs/swayidle.nix { inherit pkgs config; } );
  wlsunset = ( import ../../programs/wlsunset.nix { inherit pkgs; } );
}
