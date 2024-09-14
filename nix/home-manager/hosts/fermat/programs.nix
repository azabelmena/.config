{ pkgs, config, lib, ... }:
{

  home-manager.enable = true;

  bash = ( import ../../programs/bash.nix { inherit pkgs config; } );
  btop = ( import ../../programs/btop.nix { inherit pkgs; } );
  fastfetch = ( import ../../programs/fastfetch.nix );
  git = ( import ../../programs/git.nix { inherit pkgs; } );
  kitty = (import ../../programs/kitty.nix { inherit pkgs config; });
  nixvim = ( import ../../programs/nvim.nix/nvim.nix { inherit pkgs config; } );
  starship = ( import ../../programs/starship.nix { inherit pkgs config; });
  tmux = (import ../../programs/tmux.nix { inherit pkgs; });
  zsh = (import ../../programs/zsh.nix { inherit pkgs config; });
}
