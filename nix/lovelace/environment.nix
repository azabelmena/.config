{ pkgs, ... }:
{

  sessionVariables = {
      WLR_NO_HARDWARE_CURSORS = "1";
      NIXOS_OZONE_WL = "1";
  };

  systemPackages = with pkgs; [
      autoconf
      automake
      btop
      cmake
      coreutils
      file
      gcc
      git
      gmp
      gnumake
      htop-vim
      man-pages
      man-pages-posix
      python3
      vim-full
  ];

}
