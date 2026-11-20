{ pkgs, lib, ... }:
{
  mtr.enable = true;
  gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  virt-manager.enable = false;

  zsh.enable = true;
  umbriel.enable = true;
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
