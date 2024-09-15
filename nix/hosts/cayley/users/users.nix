{ pkgs, config, ... }:
{

  mutableUsers = false;

  groups.ssh-users = {};

  users = {
    alec = ( import ./alec.nix { inherit pkgs config; } );
    eletrico = ( import ./eletrico.nix { inherit pkgs config; });
  };
}
