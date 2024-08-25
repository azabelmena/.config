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

  #"/mnt/storage" =
    #{ device = "/dev/disk/by-uuid/a2b80594-d3f1-4291-af41-521667e8f484";
      #fsType = "ext4";
    #};

  "/mnt/games" =
    {
      device = "/dev/disk/by-uuid/747a30ab-b445-4f3b-a276-67da3eff89a8";
      fsType = "ext4";
    };
}
