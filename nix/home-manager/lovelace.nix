{ config, pkgs, inputs, lib, ... }:  # LOVELACE NIX!

{

  imports = [
    inputs.nix-colors.homeManagerModules.default
  ];
  colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-soft;

  home = {
    username = "turing";
    homeDirectory = "/home/turing";
    stateVersion = "23.11";

    sessionVariables = {
        EDITOR = "nvim";
    };

    file = ( import ./files.nix { inherit pkgs config lib; });
  };

  programs.home-manager.enable = true;

  programs = {
      bash = (import ./bash/bash.nix { inherit pkgs; });
      git = ( import ./git.nix { inherit pkgs; } );
      neovim = ( import ./nvim/nvim.nix { inherit pkgs config; } );
      starship = ( import ./starship.nix { inherit pkgs config; });
      zsh = (import ./zsh/zsh.nix { inherit pkgs; });
  };
}
