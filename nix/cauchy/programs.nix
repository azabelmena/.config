{ pkgs, ... }:
{
  mtr.enable = true;
  gnupg.agent = {
    enable = true;
    enableSSHSupport = false;
  };

  virt-manager.enable = false;

  zsh.enable = true;
  hyprland.enable = true;
  steam = {
    enable = false;
    remotePlay.openFirewall = false;
    dedicatedServer.openFirewall = false;
  };
}
