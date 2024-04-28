{ pkgs, ... }:
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
    bat
    blueberry
    discord
    eza
    fastfetch
    gamemode
    grimblast
    home-manager
    hyprland
    hyprpaper
    inkscape-with-extensions
    kitty
    libnotify
    localsend
    mako
    mpv
    obs-studio
    papirus-icon-theme
    pavucontrol
    protontricks
    protonup-ng
    qutebrowser
    qbittorrent
    ripgrep
    rofi-wayland
    starship
    swaylock-effects
    system76-keyboard-configurator
    tailscale
    texlive.combined.scheme-full
    tmux
    vifm
    waybar
    wlsunset
    xdg-desktop-portal-gtk
    zathura
    zsh
  ];
}
