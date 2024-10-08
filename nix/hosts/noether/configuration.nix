# Noether NIX!

{inputs, config, pkgs, lib, ... }:

{

  imports = [
    inputs.home-manager.darwinModules.home-manager
    inputs.stylix.darwinModules.stylix
    inputs.nix-homebrew.darwinModules.nix-homebrew
  ];

  nixpkgs = {
    config = {
      allowBroken = false;
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

  documentation = ( import ../../modules/nix-darwin/documentation.nix  );

  environment = ( import ../../modules/nix-darwin/environment.nix { inherit pkgs; } );

  homebrew = ( import ../../modules/nix-darwin/homebrew.nix { inherit config; } );

  home-manager = ( import ./home-manager.nix { inherit inputs; } );

  networking = ( import ./network.nix { inherit pkgs lib; } );

  nix-homebrew = ( import ./homebrew.nix { inherit inputs config;} );

  programs = ( import ../../modules/nix-darwin/programs.nix );

  security = ( import ../../modules/nix-darwin/security.nix);

  services = ( import ../../modules/nix-darwin/services.nix { inherit pkgs; } );

  stylix = ( import ../../modules/nix-darwin/stylix.nix { inherit pkgs; } );

  system = ( import ../../modules/nix-darwin/system.nix );

  users = ( import ./users/users.nix );
}
