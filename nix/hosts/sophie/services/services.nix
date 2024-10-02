{ pkgs, ... }:
{
  acpid = ( import ../../../modules/nixos/services/acpid.nix );

  avahi = ( import ../../../modules/nixos/services/avahi.nix );

  displayManager = ( import ../../../modules/nixos/services/displayManager.nix { inherit pkgs; } );

  fprintd = ( import ../../../modules/nixos/services/fprintd.nix { inherit pkgs; } );

  fwupd = ( import ../../../modules/nixos/services/fwupd.nix { inherit pkgs; } );

  logind = ( import ../../../modules/nixos/services/logind.nix );

  openssh = ( import ./ssh.nix );

  pipewire = ( import ../../../modules/nixos/services/pipewire.nix );

  printing = ( import ../../../modules/nixos/services/printing.nix );

  tailscale = ( import ./tailscale.nix { inherit pkgs; } );

  tlp = ( import ../../../modules/nixos/services/tlp.nix );

  xserver = ( import ./xserver.nix );
}
