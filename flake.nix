{
  description = "Declarative, reproducible, and stateless system configurations
  for NixOS and Nix-Darwin.";

  inputs = {
    nixos.url = "github:azabelmena/nixpkgs/nixos-unstable";
    nixos-stable.url = "github:azabelmena/nixpkgs/nixos-24.05";

    nixpkgs.url = "github:azabelmena/nixpkgs/nixpkgs-unstable";
    nixpkgs-stable.url = "github:azabelmena/nixpkgs/release-24.05";

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
      url = "github:azabelmena/home-manager";
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
      url = "github:azabelmena/nixvim/";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix.url = "github:danth/stylix";

    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
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
