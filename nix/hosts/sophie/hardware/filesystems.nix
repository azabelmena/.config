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
    device = "/dev/disk/by-uuid/b8c8d11f-7d98-4be9-8303-b4f15955ca92";
    fsType = "ext4";
  };

}
