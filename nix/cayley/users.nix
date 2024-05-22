{ pkgs, config, ... }:
{

  mutableUsers = false;

  groups.ssh-users = {};

  users = {
    alec = ( import ./users/alec.nix { inherit pkgs config; } );
    eletrico = ( import ./users/eletrico.nix { inherit pkgs; });
  };
}
