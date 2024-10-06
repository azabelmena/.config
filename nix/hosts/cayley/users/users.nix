{ pkgs, config, ... }:
{

  mutableUsers = false;

  groups.ssh-users = {};

  users = {
    alec = ( import ./alec.nix { inherit pkgs config; } );
  };
}
