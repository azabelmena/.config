{ pkgs, config, lib, ... }:
{
  enableAllFirmware = true;
  cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

  bluetooth = {
    enable = true;
    powerOnBoot = false;
  };

  opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;
  };
  #nvidia = ( import ./nvidia.nix { inherit config; });
}
