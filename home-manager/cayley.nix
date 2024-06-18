{ config, pkgs, inputs, lib, ... }:  # CAYLEY NIX!

{
  imports = [
    inputs.nix-colors.homeManagerModules.default
    inputs.nixvim.homeManagerModules.nixvim
  ];
  colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-soft;

  home = {
    username = "alec";
    homeDirectory = "/home/alec";
    stateVersion = "24.05";

    sessionVariables = {
        EDITOR = "nvim";
    };

    packages = [
      (pkgs.nerdfonts.override { fonts = ["IBMPlexMono"]; })
    ];

    file = ( import ./files.nix { inherit pkgs config lib; });
  };

  programs.home-manager.enable = true;

  wayland.windowManager.hyprland = ( import ./hyprland.nix { inherit pkgs config;});

  services = {
    mako = ( import ./mako.nix { inherit pkgs config; } );
  };

  programs = {
      bash = (import ./bash.nix { inherit pkgs; });
      btop = (import ./btop.nix { inherit pkgs; });
      fastfetch = ( import ./fastfetch.nix );
      git = ( import ./git.nix { inherit pkgs; } );
      kitty = (import ./kitty.nix { inherit pkgs config; });
      lf = ( import ./lf.nix );
      nixvim = ( import ./nvim.nix/nvim.nix { inherit pkgs config; } );
      qutebrowser = (import ./qutebrowser.nix/qutebrowser.nix { inherit pkgs config; });
      rofi = (import ./rofi.nix { inherit pkgs config lib; });
      starship = ( import ./starship.nix { inherit pkgs config; });
      swaylock = ( import ./swaylock.nix { inherit pkgs config; });
      tmux = (import ./tmux.nix { inherit pkgs; });
      waybar = (import ./waybar.nix { inherit pkgs config; });
      zathura = (import ./zathura.nix { inherit pkgs config; });
      zsh = (import ./zsh.nix { inherit pkgs; });
  };

  xdg = ( import ./xdg.nix { inherit pkgs config; });

  dconf = ( import ./dconf.nix);
}
