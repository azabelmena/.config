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
    fastfetch
    fortune
    gamemode
    grimblast
    home-manager
    htop-vim
    hyprland
    hyprpaper
    inkscape-with-extensions
    just
    kitty
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
    qutebrowser
    ranger
    ripgrep
    rofi-wayland
    sops
    starship
    swaylock-effects
    system76-keyboard-configurator
    tailscale
    texlive.combined.scheme-full
    tmux
    waybar
    wl-clipboard
    xdg-desktop-portal-gtk
    zathura
    zsh
  ];
}
