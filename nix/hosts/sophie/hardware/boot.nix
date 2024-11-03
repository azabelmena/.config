{ pkgs, ... }:
{
  kernelPackages = pkgs.linuxPackages;

  loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
    timeout = 0;
  };

  initrd = {
    availableKernelModules = [ "nvme" "xhci_pci" "thunderbolt" "usbhid" "uas" "sd_mod" ];
    kernelModules = [  ];
  };

  kernelParams = [  ];
  kernelModules = [ "kvm-amd" ];
  extraModulePackages = [ ];
}
