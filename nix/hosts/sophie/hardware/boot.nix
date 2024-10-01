{ pkgs, ... }:
{
  kernelPackages = pkgs.linuxPackages_zen;

  loader = {
    systemd-boot.enable = false;
    efi.canTouchEfiVariables = false;
  };

  initrd = {
    availableKernelModules = [  ];
    kernelModules = [ ];
  };

  kernelModules = [  ];
  kernelParams = [  ];
  extraModulePackages = [ ];
}
