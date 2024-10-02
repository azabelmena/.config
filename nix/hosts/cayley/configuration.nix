{inputs, config, pkgs, lib, ... }:

{

  imports = [
    inputs.home-manager.nixosModules.home-manager
    inputs.nix-colors.homeManagerModules.default
    inputs.stylix.nixosModules.stylix
    inputs.sops-nix.nixosModules.sops
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
      "kvm"
      "big-parallel"
      "benchmark"
      "nixos-test"
      ];
    };

    nixPath = [
        "nixpkgs=/nix/var/nix/profiles/per-user/root/channels/nixos/nixpkgs"
        "nixos-config=/home/alec/.config/nix/hosts/cayley/configuration.nix"
      ];
  };

  boot = ( import ./hardware/boot.nix { inherit pkgs; } );

  fileSystems = ( import ./hardware/filesystems.nix );
  swapDevices = ( import ./hardware/swap.nix );

  home-manager = ( import ./home-manager.nix { inherit inputs; } );

  networking = ( import ./hardware/network.nix { inherit pkgs lib; });

  time.timeZone = "America/Puerto_Rico";

  environment = ( import ../../modules/nixos/environment.nix { inherit pkgs; } );

  i18n.defaultLocale = "en_US.UTF-8";

  hardware = ( import ./hardware/hardware.nix { inherit pkgs config lib; });

  virtualisation = ( import ../../modules/nixos/virtualisation.nix { inherit pkgs; });

  systemd = ( import ../../modules/nixos/systemd.nix { inherit pkgs; } );

  services = ( import ./services/services.nix { inherit pkgs; } );

  xdg = ( import ../../modules/nixos/xdg.nix { inherit pkgs; } );

  security = ( import ../../modules/nixos/security.nix { inherit pkgs; } );

  users = ( import ./users/users.nix { inherit pkgs config; } );

  programs = ( import ../../modules/nixos/programs.nix { inherit pkgs; } );

  fonts.packages = with pkgs; [
     (nerdfonts.override {fonts  = ["IBMPlexMono"];})
  ];

  documentation = ( import ../../modules/nixos/documentation.nix  );

  system.stateVersion = "unstable";

  stylix = ( import ../../modules/nixos/stylix.nix { inherit pkgs; } );

  sops = ( import ../../modules/nixos/sops.nix );

}
