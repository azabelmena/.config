{ pkgs, config, ... }:
{

  mutableUsers = true;

  groups.ssh-users = {};

  users = {
    alec = ( import ./alec.nix { inherit pkgs config; } );
  };
}
