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
    mpv
    neo-cowsay
    qbittorrent
    ripgrep
    skhd
    spacebar
    starship
    texlive.combined.scheme-full
    vifm
    vim-full
    yabai
    zsh
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-vi-mode
  ];

  darwinConfig = "$HOME/.config/nix/noether/configuration.nix";

  loginShell = pkgs.zsh;

}
