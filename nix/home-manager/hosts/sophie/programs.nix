{ pkgs, config, lib, ... }:
{

  home-manager.enable = true;

  bash = ( import ../../programs/bash.nix { inherit pkgs config; } );
  btop = ( import ../../programs/btop.nix { inherit pkgs; } );
  fastfetch = ( import ../../programs/fastfetch.nix );
  foot = (import ../../programs/foot.nix { inherit pkgs; });
  git = ( import ../../programs/git.nix { inherit pkgs; } );
  hyprlock = ( import ../../programs/hypr.nix/hyprlock.nix { inherit pkgs lib; } );
  nixvim = ( import ../../programs/nvim.nix/nvim.nix { inherit pkgs config; } );
  qutebrowser = (import ../../programs/qutebrowser.nix/qutebrowser.nix { inherit pkgs config; });
  fuzzel = (import ../../programs/fuzzel.nix { inherit pkgs lib; });
  starship = ( import ../../programs/starship.nix { inherit pkgs config; });
  ssh = ( import ../../programs/ssh.nix { inherit config; } );
  tmux = (import ../../programs/tmux.nix { inherit pkgs; });
  waybar = (import ../../programs/waybar.nix { inherit pkgs config; });
  zathura = (import ../../programs/zathura.nix { inherit pkgs config; });
  zsh = (import ../../programs/zsh.nix { inherit pkgs config; });
}
