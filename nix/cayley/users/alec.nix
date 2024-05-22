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
    age
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
    just
    kitty
    libnotify
    localsend
    mako
    mpv
    obs-studio
    papirus-icon-theme
    passage
    pavucontrol
    protontricks
    protonup-ng
    qbittorrent
    qutebrowser
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
    wl-clipboard
    wlsunset
    xdg-desktop-portal-gtk
    zathura
    zsh
  ];
}
