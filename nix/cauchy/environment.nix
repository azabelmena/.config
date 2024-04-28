{ pkgs, ... }:
{

  sessionVariables = {
      WLR_NO_HARDWARE_CURSORS = "1";
      NIXOS_OZONE_WL = "1";
  };

  systemPackages = with pkgs; [
    age
    autoconf
    automake
    bc
    btop
    cmake
    coreutils
    file
    gcc
    git
    gmp
    gnumake
    htop-vim
    iptables-legacy
    libsForQt5.qt5.qtgraphicaleffects
    libsForQt5.qt5.qtquickcontrols2
    llvmPackages_9.openmp
    lshw
    man-pages
    man-pages-posix
    mpfr
    mpi
    polkit_gnome
    python3
    sage
    vim-full
  ];

}
