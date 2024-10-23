{inputs, config, pkgs, lib, ... }:

{

  imports = [
    inputs.nix-colors.homeManagerModules.default
    inputs.stylix.nixosModules.stylix
  ];

  nix = ( import ../../modules/nixos/nix.nix { inherit pkgs config; } );

  nixpkgs = ( import ../../modules/nixos/nixpkgs.nix{ inherit pkgs lib; } );

  boot = ( import ./hardware/boot.nix { inherit pkgs; } );

  networking = ( import ./hardware/network.nix { inherit pkgs lib; });

  time.timeZone = "America/Puerto_Rico";

  environment = ( import ./environment.nix { inherit pkgs; } );

  i18n.defaultLocale = "en_US.UTF-8";

  security = ( import ./security.nix { inherit pkgs; } );

  programs = ( import ./programs.nix { inherit pkgs config; } );

  documentation = ( import ../../modules/nixos/documentation.nix  );

  system.stateVersion = "unstable";

  stylix = ( import ../../modules/nixos/stylix.nix { inherit pkgs; } );

}
