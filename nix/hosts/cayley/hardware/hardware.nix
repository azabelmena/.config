{ pkgs, config, lib, ... }:
{
  enableRedistributableFirmware = true;
  cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
  system76 = {
    enableAll = true;
    firmware-daemon.enable = true;
    kernel-modules.enable = true;
    power-daemon.enable = true;
  };

  bluetooth.enable = true;

  graphics= {
      enable = true;
  };

  nvidia = ( import ./nvidia.nix { inherit config; });
}
