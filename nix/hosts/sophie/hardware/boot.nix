{ pkgs, ... }:
{
  kernelPackages = pkgs.linuxPackages_zen;

  loader = {
    systemd-boot.enable = false;
    efi.canTouchEfiVariables = false;
  };

  initrd = {
    availableKernelModules = [ "nvme" "xhci_pci" "thunderbolt" "usb_storage" "usbhid" "uas" "sd_mod" ];
    kernelModules = [  ];
  };

  kernelParams = [  ];
  kernelModules = [ "kvm-amd" ];
  extraModulePackages = [ ];
}
