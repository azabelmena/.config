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
      qt5.qtgraphicaleffects
      qt5.qtquickcontrols2
      libvirt
      lshw
      man-pages
      man-pages-posix
      mesa-demos
      mesa-demos
      openssh
      openvpn
      polkit_gnome
      proton-authenticator
      python3
      qemu
      sqlite
      vim-full
      virt-manager
  ];

}
