{ config, ... }: # Cayley NIX!
{
  package = config.boot.kernelPackages.nvidiaPackages.vulkan_beta;

  modesetting.enable = true;
  powerManagement.enable = false;
  powerManagement.finegrained = false;

  open = true;

  nvidiaSettings = true;

  prime = {
    sync.enable = true;

    offload = {
      enable = false;
      enableOffloadCmd = false;
    };

    allowExternalGpu = false;

    intelBusId = "PCI:0:2:0";
    nvidiaBusId = "PCI:1:0:0";
  };
}
