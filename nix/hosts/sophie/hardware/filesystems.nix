{
  "/boot" = {
    device = "tmpfs";
    fsType = "tmpfs";
  };

  "/" = {
    device = "tmpfs";
    fsType = "tmpfs";
  };

  fileSystems."/nix/.ro-store" =
    { device = "/iso/nix-store.squashfs";
      fsType = "squashfs";
      options = [ "loop" ];
    };

  fileSystems."/nix/.rw-store" =
    { device = "tmpfs";
      fsType = "tmpfs";
    };

  fileSystems."/nix/store" =
    { device = "overlay";
      fsType = "overlay";
    };

}
