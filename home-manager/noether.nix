{ config, pkgs, inputs, lib, ... }: #NOETHER NIX!

{
    imports = [
      inputs.nix-colors.homeManagerModules.default
      inputs.nixvim.homeManagerModules.nixvim
    ];
    colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-soft;

    home.username = "alec";
    home.homeDirectory = "/Users/alec";

    home.stateVersion = "23.11";

    home.sessionVariables = {
    EDITOR = "nvim";
    XDG_CONFIG_HOME = ".config";
    };

    programs.home-manager.enable = true;

    home.packages = with pkgs; [
      (nerdfonts.override { fonts = ["IBMPlexMono"]; })
    ];

    programs = {
      bash = (import ./bash.nix { inherit pkgs; });
      git = ( import ./git.nix { inherit pkgs; } );
      fastfetch = ( import ./fastfetch.nix );
      kitty = (import ./kitty.nix { inherit pkgs config; });
      nixvim = ( import ./nvim.nix/nvim.nix { inherit pkgs config; } );
      starship = ( import ./starship.nix { inherit pkgs config; });
      tmux = ( import ./tmux.nix { inherit pkgs; } );
      zathura = ( import ./zathura.nix { inherit pkgs config; } );
      zsh = ( import ./zsh.nix { inherit pkgs; } );
    };

  home.file = ( import ./files.nix { inherit pkgs config lib; });
}
