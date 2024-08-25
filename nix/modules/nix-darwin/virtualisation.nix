{ pkgs, ... }:

{
  libvirtd = {
    package = pkgs.libvirt;

    enable = true;

    qemu = {
      package = pkgs.qemu;

      runAsRoot = false;

      ovmf = {

        enable = true;
        packages = with pkgs; [
          OVMFFull.fd
        ];

      };
    };

    allowedBridges = [
      "virbr0"
    ];
  };
}
