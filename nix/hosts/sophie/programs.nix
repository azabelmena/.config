{ pkgs, lib, ... }:
{
  mtr.enable = true;
  gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  virt-manager.enable = false;

  regreet = ( import ../../modules/nixos/regreet.nix { inherit pkgs lib; } );

  zsh.enable = true;
  hyprland.enable = true;
  steam = {
    enable = false;
    remotePlay.openFirewall = false;
    dedicatedServer.openFirewall = false;
  };
}
