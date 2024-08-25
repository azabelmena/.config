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

    file = ( import ../../misc/files.nix { inherit pkgs config lib; });
  };

  wayland.windowManager.hyprland = ( import ../../programs/hyprland.nix { inherit pkgs config;});

  services = {
    mako = ( import ../../programs/mako.nix { inherit pkgs config; } );
  };

  programs = ( import ./programs.nix { inherit pkgs config lib; } );

  xdg = ( import ../../misc/xdg.nix { inherit pkgs config; });

  dconf = ( import ../../misc/dconf.nix);
}
