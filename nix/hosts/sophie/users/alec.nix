{ pkgs, config, ... }:
{

  isNormalUser = true;

  extraGroups = [
    "libvirtd"
    "networkmanager"
    "wheel"
    "ssh-users"
  ];

  hashedPasswordFile = config.sops.secrets.alec-password.path;

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
    texliveFull
    wl-clipboard
    xdg-desktop-portal-gtk
  ];
}
