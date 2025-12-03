{inputs, config, pkgs, lib, ... }:

{

  imports = [
    inputs.home-manager.nixosModules.home-manager
    inputs.nix-colors.homeManagerModules.default
    inputs.stylix.nixosModules.stylix
    inputs.sops-nix.nixosModules.sops
  ];

  nix = ( import ../../modules/nixos/nix.nix { inherit pkgs config; } );

  nixpkgs = ( import ../../modules/nixos/nixpkgs.nix{ inherit pkgs lib; } );

  boot = ( import ./hardware/boot.nix { inherit pkgs; } );

  fileSystems = ( import ./hardware/filesystems.nix );
  swapDevices = ( import ./hardware/swap.nix );

  home-manager = ( import ./home-manager.nix { inherit inputs; } );

  networking = ( import ./hardware/network.nix { inherit pkgs lib; });

  time.timeZone = "America/Puerto_Rico";

  environment = ( import ../../modules/nixos/environment.nix { inherit pkgs; } );

  i18n.defaultLocale = "en_US.UTF-8";

  hardware = ( import ./hardware/hardware.nix { inherit pkgs config lib; });

  systemd = ( import ../../modules/nixos/systemd.nix { inherit pkgs lib; } );

  services = ( import ./services/services.nix { inherit pkgs; } );

  xdg = ( import ../../modules/nixos/xdg.nix { inherit pkgs; } );

  security = ( import ../../modules/nixos/security.nix { inherit pkgs; } );

  powerManagement = ( import ./hardware/power-management.nix );

  users = ( import ./users/users.nix { inherit pkgs config; } );

  programs = ( import ./programs.nix { inherit pkgs lib; } );

  fonts.packages = with pkgs.nerd-fonts; [
    blex-mono
  ];

  documentation = ( import ../../modules/nixos/documentation.nix  );

  system.stateVersion = "25.05";

  stylix = ( import ../../modules/nixos/stylix.nix { inherit pkgs; } );

  sops = ( import ../../modules/nixos/sops.nix { inherit inputs config; } );

}
