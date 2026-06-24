{ pkgs, lib, ... }:
{
  mtr.enable = true;
  gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  virt-manager.enable = false;

  noctalia-greeter = ( import ../../modules/nixos/noctalia-greeter.nix { inherit pkgs; } );

  zsh.enable = true;
  hyprland.enable = true;
  steam = {
    enable = true;
    package = pkgs.steam;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  gpu-screen-recorder = {
    enable = true;
    package = pkgs.gpu-screen-recorder;
  };
}
