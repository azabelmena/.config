# Noether NIX!

{inputs, config, pkgs, lib, ... }:

{

  nixpkgs = {
    config = {
      allowUnfree = true;
    };

    hostPlatform = "aarch64-darwin";
  };

  nix.settings = {
      experimental-features = ["nix-command" "flakes"];
  };

  users = ( import ./users/users.nix );

  environment = ( import ./environment.nix { inherit pkgs; } );

  system = ( import ./system.nix );

  services = ( import ./services/services.nix { inherit pkgs; } );

  security = ( import ./security.nix);

  programs = ( import ./programs.nix );

  stylix = ( import ./stylix.nix { inherit pkgs; } );

  documentation.enable = true;

  fonts.fontDir.enable = true;
}
