{ pkgs, config, lib, ... }:
{
  enableRedistributableFirmware = true;

  bluetooth.enable = true;

  graphics = {
      enable = true;
  };
}
