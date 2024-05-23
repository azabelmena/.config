{ pkgs, config, ... }:
{

  isNormalUser = true;
  extraGroups = [
    "libvirtd"
    "networkmanager"
    #"ssh-users"
  ];

  hashedPasswordFile = config.sops.secrets.eletrico-password.path;

  shell = pkgs.zsh;

  packages = with pkgs; [
    bat
    eza
    fastfetch
    fd
    home-manager
    kitty
    manix
    ripgrep
    starship
    tailscale
    texlive.combined.scheme-full
    tmux
    vifm
    zsh
  ];

}
