# Cayley NIX!

{inputs, config, pkgs, lib, ... }:

{

  imports = [
    inputs.home-manager.nixosModules.home-manager
    inputs.nix-colors.homeManagerModules.default
    inputs.stylix.nixosModules.stylix
  ];
  #colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-soft;


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
      "kvm"
      "big-parallel"
      "benchmark"
      "nixos-test"
      ];
    };

    nixPath = [
        "nixpkgs=/nix/var/nix/profiles/per-user/root/channels/nixos/nixpkgs"
        "nixos-config=/home/alec/.config/nixos/cayley/configuration.nix"
      ];
  };

  boot = ( import ./boot.nix { inherit pkgs; });

  fileSystems = ( import ./filesystems.nix );
  swapDevices = ( import ./swap.nix );

  home-manager = {
    extraSpecialArgs = { inherit inputs; };

    users = {
      alec = ( import ../../home-manager/cayley.nix );
    };

    useGlobalPkgs = true;
    useUserPackages = true;
  };

  networking = ( import ./network.nix { inherit pkgs lib; });

  time.timeZone = "America/Puerto_Rico";

  environment = ( import ./environment.nix { inherit pkgs; } );

  i18n.defaultLocale = "en_US.UTF-8";
  #console = lib.mkDefault ( import ./console.nix { inherit config; });

  hardware = ( import ./hardware.nix { inherit pkgs config lib; });

  virtualisation = ( import ./virtualisation.nix { inherit pkgs; });

  systemd = ( import ./systemd.nix { inherit pkgs; } );
  services = ( import ./services.nix { inherit pkgs; } );

  sound.enable = true;

  xdg = ( import ./xdg.nix { inherit pkgs; } );

  security = ( import ./security.nix { inherit pkgs; } );

  users = ( import ./users.nix { inherit pkgs; } );

  programs = ( import ./programs.nix { inherit pkgs; } );

  fonts.packages = with pkgs; [
     (nerdfonts.override {fonts  = ["IBMPlexMono"];})
  ];

  documentation = ( import ./documentation.nix  );

  system.stateVersion = "unstable";

  stylix = ( import ./stylix.nix { inherit pkgs; } );

}
