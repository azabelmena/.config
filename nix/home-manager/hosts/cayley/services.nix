{ pkgs, config, ... }:
{
  mako = ( import ../../programs/mako.nix { inherit pkgs config; } );
}
