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
    prismlauncher
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
    ripgrep
    sops
    system76-keyboard-configurator
    texliveFull
    tailscale
    wl-clipboard
    xdg-desktop-portal-gtk
  ];
}
