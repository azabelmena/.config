{ pkgs, ... }:
{
  kernel.enable = true;

  loader = {
    systemd-boot.enable = false;
    efi.canTouchEfiVariables = false;
  };
}
