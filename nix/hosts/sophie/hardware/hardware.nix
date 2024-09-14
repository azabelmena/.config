{ pkgs, config, lib, ... }:
{
  enableRedistributableFirmware = true;

  bluetooth.enable = true;

  opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;
  };
}
