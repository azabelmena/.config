{inputs, config, pkgs, lib, ... }:

{

  imports = [
    inputs.nix-colors.homeManagerModules.default
    inputs.stylix.nixosModules.stylix
  ];


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
      auto-optimise-store = false;
      max-jobs = 8;
      require-sigs = true;
      sandbox = true;
      experimental-features = ["nix-command" "flakes"];
      allowed-users = [ "@wheel" ];

      system-features = [
      "big-parallel"
      "benchmark"
      "nixos-test"
      ];
    };

    nixPath = [
        "nixpkgs=/nix/var/nix/profiles/per-user/root/channels/nixos/nixpkgs"
        "nixos-config=/home/alec/.config/nix/hosts/fermat/configuration.nix"
      ];
  };

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
