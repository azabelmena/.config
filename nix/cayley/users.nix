{ pkgs, ... }:
{

  groups.ssh-users = {};

  users = {
    alec = ( import ./users/alec.nix { inherit pkgs; } );
    eletrico = ( import ./users/eletrico.nix { inherit pkgs; });
  };
}
