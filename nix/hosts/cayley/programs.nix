{ pkgs, lib, ... }:
{
  mtr.enable = true;
  gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  virt-manager.enable = true;

  noctalia-greeter = ( import ../../modules/nixos/noctalia-greeter.nix { inherit pkgs; } );

  zsh.enable = true;
  hyprland.enable = true;
  steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };
}
