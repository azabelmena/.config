{ pkgs, ... }:
{

  systemPackages = with pkgs; [
    autoconf
    automake
    btop
    cmake
    coreutils
    eza
    fastfetch
    file
    gcc
    git
    htop-vim
    lynx
    man-pages
    man-pages-posix
    manix
    python3
    tmux
  ];

}
