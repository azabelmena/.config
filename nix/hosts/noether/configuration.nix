# Noether NIX!

{inputs, config, pkgs, lib, ... }:

{

  imports = [
    inputs.home-manager.darwinModules.home-manager
    inputs.stylix.darwinModules.stylix
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };

    hostPlatform = "aarch64-darwin";
  };

  nix = {
    package = pkgs.nixFlakes;
    settings = {
      auto-optimise-store = false;
      max-jobs = 8;
      require-sigs = true;
      experimental-features = ["nix-command" "flakes"];

      system-features = [
      "big-parallel"
      "benchmark"
      ];
    };

    nixPath = [
        "darwin=/Users/alec/.nix-defexpr/channels/darwin"
        "darwin-config=/Users/alec/.config/nix/hosts/noether/configuration.nix"
      ];
  };

  users = ( import ../../modules/nix-darwin/users/users.nix );

  environment = ( import ../../modules/nix-darwin/environment.nix { inherit pkgs; } );

  home-manager = ( import ./home-manager.nix { inherit inputs; } );

  networking = ( import ./network.nix { inherit pkgs lib; } );

  system = ( import ../../modules/nix-darwin/system.nix );

  services = ( import ../../modules/nix-darwin/services.nix { inherit pkgs; } );

  security = ( import ../../modules/nix-darwin/security.nix);

  programs = ( import ../../modules/nix-darwin/programs.nix );

  stylix = ( import ../../modules/nix-darwin/stylix.nix { inherit pkgs; } );

  fonts.fontDir.enable = true;
}
