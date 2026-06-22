{ pkgs, ... }:
{

  sessionVariables = {
      WLR_NO_HARDWARE_CURSORS = "1";
      NIXOS_OZONE_WL = "1";
  };

  systemPackages = with pkgs; [
      OVMFFull
      autoconf
      automake
      bc
      btop
      cmake
      coreutils
      file
      gcc
      git
      gnumake
      gparted
      iptables-legacy
      jellyfin
      jellyfin-ffmpeg
      jellyfin-web
      just
      libvirt
      lshw
      man-pages
      man-pages-posix
      mesa-demos
      openssh
      openvpn
      proton-authenticator
      python3
      qemu
      qt5.qtgraphicaleffects
      qt5.qtquickcontrols2
      sqlite
      vim-full
      virt-manager
  ];

}
