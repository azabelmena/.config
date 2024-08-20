{ pkgs, ... }:
{

  users = {
    alec = {
      isNormalUser = true;
      extraGroups = [
        "libvirtd"
        "networkmanager"
        "wheel"
      ];
      shell = pkgs.zsh;
      packages = with pkgs; [
        authy
        bat
        eza
        fastfetch
        fd
        grimblast
        home-manager
        hugo
        hyprland
        hyprpaper
        inkscape-with-extensions
        kitty
        libnotify
        localsend
        mako
        manix
        mpv
        papirus-icon-theme
        pavucontrol
        qutebrowser
        ripgrep
        rofi-wayland
        starship
        swaylock-effects
        texlive.combined.scheme-full
        tmux
        tutanota-desktop
        vifm
        waybar
        wlsunset
        xdg-desktop-portal-gtk
        zathura
        zsh
      ];
    };
  };
}
