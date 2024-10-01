{ pkgs, config, lib, ... }:
{
  enableRedistributableFirmware = true;
  cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

  bluetooth.enable = true;

  graphics = {
      enable = true;
  };
}
