{ pkgs, ... }:
{
  kernelPackages = pkgs.linuxPackages;

  loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
    timeout = 0;
  };

  initrd = {
    availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usbhid" "sd_mod" ];
    kernelModules = [ ];
  };

  kernelModules = [ "kvm-intel" ];
  kernelParams = [ "module_blacklist=i915" ];
  extraModulePackages = [ ];
}
