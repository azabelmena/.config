{ pkgs, config, ... }:
{

  isNormalUser = true;

  extraGroups = [
    "libvirtd"
    "networkmanager"
    "wheel"
    "ssh-users"
  ];

  shell = pkgs.zsh;

  packages = with pkgs; [
    age
    bat
    blueberry
    discord
    eza
    fortune
    framework-tool
    gamemode
    grimblast
    home-manager
    htop-vim
    hyprland
    hyprpaper
    inkscape-with-extensions
    just
    libnotify
    localsend
    mako
    mpv
    neo-cowsay
    obs-studio
    papirus-icon-theme
    passage
    pavucontrol
    protontricks
    protonup-ng
    qbittorrent
    qmk
    ripgrep
    sops
    system76-keyboard-configurator
    tailscale
    texlive.combined.scheme-full
    typst
    wl-clipboard
    xdg-desktop-portal-gtk
  ];
}
