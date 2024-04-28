{ pkgs, ... }:
{
  kernelPackages = pkgs.linuxPackages_zen;
  loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };
  initrd.availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usb_storage" "sd_mod" ];
  initrd.kernelModules = [ ];
  kernelModules = [ "kvm-intel" ];
  extraModulePackages = [ ];
}
