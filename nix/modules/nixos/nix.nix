{ pkgs, config, ... }:
let
home = config.home-manager.users.alec.home.homeDirectory;
host = config.networking.hostName;
in
{
  package = pkgs.nixVersions.stable;
  settings = {
    auto-optimise-store = false;
    cores = 8;
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
    "nixos-config=${home}/.config/nix/hosts/${host}/configuration.nix"
  ];
}
