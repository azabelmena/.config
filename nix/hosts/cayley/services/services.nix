{ pkgs, ... }:
{
  acpid = ( import ../../../modules/nixos/services/acpid.nix );

  avahi = ( import ../../../modules/nixos/services/avahi.nix );

  logind = ( import ../../../modules/nixos/services/logind.nix );

  openssh = ( import ./ssh.nix );

  pipewire = ( import ../../../modules/nixos/services/pipewire.nix );

  printing = ( import ../../../modules/nixos/services/printing.nix );

  tailscale = ( import ./tailscale.nix { inherit pkgs; } );

  xserver = ( import ./xserver.nix );
}
