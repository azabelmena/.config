# Fermat NIX!

{inputs, config, pkgs, lib, ... }:

{

imports = [
  inputs.nix-colors.homeManagerModules.default
  inputs.nixvim-stable.nixosModules.nixvim
<<<<<<< HEAD
=======
  inputs.stylix.nixosModules.stylix
>>>>>>> parent of eca0d85 (Fixed bug)
];
colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-soft;

nixpkgs = {
    config = {
      allowBroken = false;
      allowUnfree = true;
    };
    hostPlatform = lib.mkDefault "x86_64-linux";
  };
  nix = {
    package = pkgs.nixFlakes;
    settings = {
      auto-optimise-store = true;
      max-jobs = 8;
      require-sigs = true;
      sandbox = true;
      experimental-features = ["nix-command" "flakes"];
      allowed-users = [ "@wheel" ];

      system-features = [
      "kvm"
      "big-parallel"
      "benchmark"
      "nixos-test"
      ];
    };
  };


  boot = ( import ./boot.nix { inherit pkgs; });

  networking = ( import ./networking.nix { inherit pkgs; });

  time.timeZone = "America/Puerto_Rico";

  environment = ( import ./environment.nix { inherit pkgs; } );

  i18n.defaultLocale = "en_US.UTF-8";
  console = lib.mkDefault ( import ./console.nix { inherit config; });

  services = ( import ./services.nix { inherit pkgs lib; } );

  security = ( import ./security.nix { inherit pkgs; } );

  #users = ( import ./users.nix { inherit pkgs lib; } );

  programs = ( import ./programs.nix { inherit pkgs config; } );

<<<<<<< HEAD
=======
  stylix = ( import ./stylix.nix { inherit pkgs; } );

>>>>>>> parent of eca0d85 (Fixed bug)
  documentation.dev.enable = true;

  system.stateVersion = "23.11";

}
