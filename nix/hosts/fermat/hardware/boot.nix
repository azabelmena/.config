{ pkgs, ... }:
{
  kernelPackages = pkgs.linuxPackages_zen;

  loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  initrd = {
    availableKernelModules = [];
    kernelModules = [];
  };

  kernelModules = [];
  kernelParams = [];
  extraModulePackages = [];
}
