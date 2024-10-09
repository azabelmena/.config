{
  description = "Declarative, reproducible, and stateless system configurations
  for NixOS and Nix-Darwin.";

  inputs = {
    nixos.url = "github:NixOS/nixpkgs/nixos-unstable";

    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    nix-homebrew = {
      url = "github:zhaofengli-wip/nix-homebrew";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    homebrew-bundle = {
      url = "github:homebrew/homebrew-bundle";
      flake = false;
    };


    homebrew-cask = {
      url = "github:homebrew/homebrew-cask";
      flake = false;
    };

    homebrew-core = {
      url = "github:homebrew/homebrew-core";
      flake = false;
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nikitabobko-tap = {
      url = "github:nikitabobko/homebrew-tap";
      flake = false;
    };

    nix-colors.url = "github:misterio77/nix-colors";

    nixvim = {
      url = "github:nix-community/nixvim/";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix.url = "github:danth/stylix";

    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    secrets = {
      url = "git+ssh://git@github.com/azabelmena/secrets.git?ref=main&shallow=1";
      flake = false;
    };
  };

  outputs = {self, nixos, nixpkgs, darwin, ...}@inputs:
  let
    system-x86_64-linux = "x86_64-linux";
    system-aarch64-darwin = "aarch64-darwin";
  in{
    nixosConfigurations = {

      cayley = nixos.lib.nixosSystem {
        specialArgs = { inherit inputs system-x86_64-linux; };

        modules = [
          ./nix/hosts/cayley/configuration.nix
        ];
      };

      fermat = nixos.lib.nixosSystem {
        specialArgs = { inherit inputs system-x86_64-linux; };

        modules = [
          "${nixos}/nixos/modules/installer/cd-dvd/installation-cd-minimal.nix"
          ./nix/hosts/fermat/configuration.nix
        ];
      };

      sophie = nixos.lib.nixosSystem {
        specialArgs = { inherit inputs system-x86_64-linux; };

        modules = [
          ./nix/hosts/sophie/configuration.nix
        ];
      };
    };

  darwinConfigurations = {

      noether = darwin.lib.darwinSystem{
        specialArgs = { inherit inputs system-aarch64-darwin; };
        modules = [
          ./nix/hosts/noether/configuration.nix
        ];
      };

    };

  };
}
