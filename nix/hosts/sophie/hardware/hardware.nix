{ pkgs, config, lib, ... }:
{
  enableRedistributableFirmware = true;
  cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

  bluetooth.enable = true;

  keyboard.qmk.enable = true;

  sensor = {
    iio.enable = true;

    hddtemp = {
      enable = true;
      unit = "C";
      drives = [
        "/dev/nvme0n1"
        "/dev/sda"
      ];
    };
  };

  graphics = {
    enable = true;
    enable32Bit = true;
  };
}
