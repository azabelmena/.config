{ pkgs, config, lib, ... }:
{
  bash = (import ../../programs/bash.nix { inherit pkgs; });
  git = ( import ../../programs/git.nix { inherit pkgs; } );
  fastfetch = ( import ../../programs/fastfetch.nix );
  kitty = (import ../../programs/kitty.nix { inherit pkgs config; });
  nixvim = ( import ../../programs/nvim.nix/nvim.nix { inherit pkgs config; } );
  starship = ( import ../../programs/starship.nix { inherit pkgs config; });
  tmux = ( import ../../programs/tmux.nix { inherit pkgs; } );
  zathura = ( import ../../programs/zathura.nix { inherit pkgs config; } );
  zsh = ( import ../../programs/zsh.nix { inherit pkgs; } );

}
