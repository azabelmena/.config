{

  "/" = {
    device = "/dev/disk/by-uuid/71d8a47c-3fe2-46b6-a87d-f5a69d77c824";
    fsType = "ext4";
  };

  "/boot" = {
    device = "/dev/disk/by-uuid/4496-6092";
    fsType = "vfat";
    options = [ "fmask=0077" "dmask=0077" ];
  };

  "/home/alec/storage" = {
    device = "/dev/disk/by-uuid/6a1aaf3b-f43d-45e3-be06-2d3637e4ee3c";
    fsType = "ext4";
  };

}
