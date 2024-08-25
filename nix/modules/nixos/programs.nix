{ pkgs, ... }:
{
  mtr.enable = true;
  gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  virt-manager.enable = true;

  zsh.enable = true;
  hyprland.enable = true;
  steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };
}
