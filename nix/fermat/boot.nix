{ pkgs, ... }:
{
  kernelPackages = pkgs.linuxPackages;
  loader = {
    systemd-boot.enable = false;
    efi.canTouchEfiVariables = false;
  };
}
