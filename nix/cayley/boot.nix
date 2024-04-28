{ pkgs, ... }:
{
  kernelPackages = pkgs.linuxPackages_zen;
  loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  initrd.availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usbhid" "sd_mod" ];
  initrd.kernelModules = [ ];
  kernelModules = [ "kvm-intel" ];
  kernelParams = [ "module_blacklist=i915" ];
  extraModulePackages = [ ];
}
