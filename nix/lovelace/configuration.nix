# LOVELACE NIX!

{inputs, config, pkgs, lib, ... }:

{

  nixpkgs.config.allowUnfree = true;
  nix.settings = {
      experimental-features = ["nix-command" "flakes"];
  };

  imports = [
    ./hardware-configuration.nix

    inputs.home-manager-stable.nixosModules.home-manager
  ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };

    users = {
      turing = import ../../home-manager/lovelace.nix;
    };

    useGlobalPkgs = true;
    useUserPackages = true;
  };

  boot = ( import ./boot.nix { inherit pkgs; });

  networking = ( import ./networking.nix { inherit pkgs; });

  time.timeZone = "America/Puerto_Rico";

  environment = ( import ./environment.nix { inherit pkgs; } );

  i18n.defaultLocale = "en_US.UTF-8";
  console = lib.mkDefault {
      font = "Lat2-Terminus16";
      keyMap = "us";
      useXkbConfig = true;
  };

  services = ( import ./services.nix { inherit pkgs; } );

  security = ( import ./security.nix { inherit pkgs; } );

  users = ( import ./users.nix { inherit pkgs; } );

  programs = ( import ./programs.nix { inherit pkgs; } );

  documentation.dev.enable = true;

  system.stateVersion = "23.11";

}
