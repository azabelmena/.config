# Noether NIX!

{inputs, config, pkgs, lib, ... }:

{

  nixpkgs = {
    config = {
      allowUnfree = true;
    };

    hostPlatform = "aarch64-darwin";
  };

  nix = {
    package = pkgs.nixFlakes;
    settings = {
      experimental-features = ["nix-command" "flakes"];
    };

    nixPath = [
        #"darwin=/nix/var/nix/profiles/per-user/root/channels/nixos/nixpkgs"
        "darwin-config=/Users/alec/.config/nix/hosts/noether/configuration.nix"
      ];
  };

  users = ( import ../../modules/nix-darwin/users/users.nix );

  environment = ( import ../../modules/nix-darwin/environment.nix { inherit pkgs; } );

  system = ( import ../../modules/nix-darwin/system.nix );

  services = ( import ../../modules/nix-darwin/services.nix { inherit pkgs; } );

  security = ( import ../../modules/nix-darwin/security.nix);

  programs = ( import ../../modules/nix-darwin/programs.nix );

  stylix = ( import ../../modules/nix-darwin/stylix.nix { inherit pkgs; } );

  fonts.fontDir.enable = true;
}
