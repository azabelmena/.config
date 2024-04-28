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
      htop-vim
      iptables-legacy
      libsForQt5.qt5.qtgraphicaleffects
      libsForQt5.qt5.qtquickcontrols2
      libsForQt5.qt5.qtwayland
      libsForQt5.qt5.qtwebengine
      libvirt
      lshw
      man-pages
      man-pages-posix
      openssh
      openvpn
      polkit_gnome
      python3
      qemu
      vim-full
      virt-manager
  ];

}
