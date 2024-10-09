{ pkgs, ... }:
{

  systemPackages = with pkgs; [
    bat
    coreutils
    eza
    fastfetch
    fortune
    gcc
    git
    inkscape-with-extensions
    jq
    just
    kitty
    neo-cowsay
    qbittorrent
    ripgrep
    spacebar
    starship
    texlive.combined.scheme-full
    vifm
    vim-full
    zsh
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-vi-mode
  ];

  darwinConfig = "/Users/alec/.config/nix/hosts/noether/configuration.nix";

  loginShell = pkgs.zsh;

}
