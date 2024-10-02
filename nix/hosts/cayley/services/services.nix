{ pkgs, ... }:
{
  acpid = ( import ../../../modules/nixos/services/acpid.nix );

  avahi = ( import ../../../modules/nixos/services/avahi.nix );

  displayManager = ( import ../../../modules/nixos/services/displayManager.nix { inherit pkgs; } );

  openssh = ( import ./ssh.nix );

  pipewire = ( import ../../../modules/nixos/services/pipewire.nix );

  printing = ( import ../../../modules/nixos/services/printing.nix );

  tailscale = ( import ./tailscale.nix { inherit pkgs; } );

  xserver = ( import ./xserver.nix );
}
