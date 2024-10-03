{ pkgs, ... }:
{
  kernelPackages = pkgs.linuxPackages_zen;

  loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
    timeout = 0;
  };

  plymouth = ( import ../../../modules/nixos/plymouth.nix { inherit pkgs; } );

  initrd = {
    availableKernelModules = [ "nvme" "xhci_pci" "thunderbolt" "usbhid" "uas" "sd_mod" ];
    kernelModules = [  ];
  };

  kernelParams = [  ];
  kernelModules = [ "kvm-amd" ];
  extraModulePackages = [ ];
}
