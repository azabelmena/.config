{ pkgs, lib, ... }:
{
  mtr.enable = true;
  gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  virt-manager.enable = false;

  regreet = ( import ../../modules/nixos/services/regreet.nix { inherit pkgs lib; } );

  zsh.enable = true;
  hyprland.enable = true;
  steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };
}
