{ pkgs, config, lib, ... }:
{
  enableRedistributableFirmware = false;
  cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

  bluetooth.enable = false;

  graphics = {
      enable = false;
  };
}
