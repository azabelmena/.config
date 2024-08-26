# Noether NIX!configu

{inputs, config, pkgs, lib, ... }:

{

  imports = [
    inputs.home-manager.darwinModules.home-manager
    inputs.nix-colors.homeManagerModules.default
    inputs.stylix.darwinModules.stylix
  ];


  nixpkgs = {
    config = {
      allowBroken = false;
      allowUnfree = true;
    };
    hostPlatform = lib.mkDefault "aarch64-linux";
  };
  nix = {
    settings = {
      experimental-features = ["nix-command" "flakes"];
    };
  };

  documentation.enable = true;

  environment = ( import ../../modules/nix-darwin/environment.nix { inherit pkgs; } );

  fonts.fontDir.enable = true;

  home-manager = ( import ./home-manager.nix { inherit inputs; } );

  security = ( import ../../modules/nix-darwin/security.nix );

  services = ( import ../../modules/nix-darwin/services.nix{ inherit pkgs; } );

  stylix = ( import ../../modules/nix-darwin/stylix.nix { inherit pkgs; } );

  system = ( import ../../modules/nix-darwin/system.nix );

  users = ( import ../../modules/nix-darwin/users/users.nix );

}
