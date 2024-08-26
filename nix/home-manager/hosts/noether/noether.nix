{ config, pkgs, inputs, lib, ... }: #NOETHER NIX!

{
    imports = [
      inputs.nix-colors.homeManagerModules.default
      inputs.nixvim.homeManagerModules.nixvim
    ];
    colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-soft;

    home.username = "alec";
    home.homeDirectory = "/Users/alec";

    home.stateVersion = "24.05";

    home.sessionVariables = {
    EDITOR = "nvim";
    XDG_CONFIG_HOME = ".config";
    };

    programs.home-manager.enable = true;

    home.packages = with pkgs; [
      (nerdfonts.override { fonts = ["IBMPlexMono"]; })
    ];

    programs = {
      bash = (import ../../programs/bash.nix { inherit pkgs; });
      git = ( import ../../programs/git.nix { inherit pkgs; } );
      fastfetch = ( import ../../programs/fastfetch.nix );
      kitty = (import ../../programs/kitty.nix { inherit pkgs config; });
      nixvim = ( import ../../programs/nvim.nix/nvim.nix { inherit pkgs config; } );
      starship = ( import ../../programs/starship.nix { inherit pkgs config; });
      tmux = ( import ../../programs/tmux.nix { inherit pkgs; } );
      zathura = ( import ../../programs/zathura.nix { inherit pkgs config; } );
      zsh = ( import ../../programs/zsh.nix { inherit pkgs; } );
    };

  home.file = ( import ../../../modules/nix-darwin/misc/files.nix { inherit pkgs config lib; });
}
