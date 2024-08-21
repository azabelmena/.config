{ pkgs, ... }:
{

  nix-daemon.enable = true;

  skhd = ( import ./services/skhd.nix { inherit pkgs; } );
  yabai = ( import ./services/yabai.nix { inherit pkgs; } );
  skhd = ( import ./services/skhd.nix { inherit pkgs; } );

}
