{ pkgs, ... }:
{

  nix-daemon.enable = true;

  skhd = ( import ./skhd.nix { inherit pkgs; } );

}
