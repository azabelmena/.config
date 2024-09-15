{ pkgs, config, lib, ... }:
{

  home-manager.enable = true;

  bash = ( import ../../programs/bash.nix { inherit pkgs config; } );
  btop = ( import ../../programs/btop.nix { inherit pkgs; } );
  fastfetch = ( import ../../programs/fastfetch.nix );
  git = ( import ../../programs/git.nix { inherit pkgs; } );
  foot = (import ../../programs/foot.nix { inherit pkgs; });
  nixvim = ( import ../../programs/nvim.nix/nvim.nix { inherit pkgs config; } );
  qutebrowser = (import ../../programs/qutebrowser.nix/qutebrowser.nix { inherit pkgs config; });
  ranger = ( import ../../programs/ranger.nix { inherit pkgs; } );
  rofi = (import ../../programs/rofi.nix { inherit pkgs config lib; });
  starship = ( import ../../programs/starship.nix { inherit pkgs config; });
  swaylock = ( import ../../programs/swaylock.nix { inherit pkgs config; });
  tmux = (import ../../programs/tmux.nix { inherit pkgs; });
  waybar = (import ../../programs/waybar.nix { inherit pkgs config; });
  zathura = (import ../../programs/zathura.nix { inherit pkgs config; });
  zsh = (import ../../programs/zsh.nix { inherit pkgs config; });
}
