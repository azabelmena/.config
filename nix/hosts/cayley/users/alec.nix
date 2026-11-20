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
    blueman
    discord
    eza
    fortune
    gamemode
    home-manager
    htop-vim
    inkscape-with-extensions
    just
    libnotify
    localsend
    mako
    mpv
    neo-cowsay
    nvtopPackages.full
    obs-studio
    papirus-icon-theme
    passage
    pavucontrol
    prismlauncher
    protontricks
    protonup-ng
    qbittorrent
    ripgrep
    sops
    system76-keyboard-configurator
    tailscale
    texliveFull
    wl-clipboard
  ];
}
