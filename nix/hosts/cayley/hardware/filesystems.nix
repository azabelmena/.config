{
  "/boot" =
    {
      device = "/dev/disk/by-uuid/E820-7F6C";
      fsType = "vfat";
    };

  "/" =
    {
      device = "/dev/disk/by-uuid/251add71-65ad-4464-9a41-2f5a52d9e784";
      fsType = "ext4";
    };

  "/home/alec/Games" = {
    device = "/dev/disk/by-uuid/747a30ab-b445-4f3b-a276-67da3eff89a8";
    fsType = "ext4";
  };

  "/home/alec/Audio" = {
    device = "/dev/disk/by-uuid/6d44f0d5-baf3-4e77-9c43-a75d1b29fca1";
    fsType = "ext4";
  };

  "/home/alec/Video" = {
    device = "/dev/disk/by-uuid/1b7cbdbd-e8d4-46b3-88ce-37c5fbacf72f";
    fsType = "ext4";
  };
}
