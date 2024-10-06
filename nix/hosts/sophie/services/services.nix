{ pkgs, ... }:
{
  acpid = ( import ../../../modules/nixos/services/acpid.nix );

  avahi = ( import ../../../modules/nixos/services/avahi.nix );

  fprintd = ( import ../../../modules/nixos/services/fprintd.nix { inherit pkgs; } );

  fwupd = ( import ../../../modules/nixos/services/fwupd.nix { inherit pkgs; } );

  logind = ( import ../../../modules/nixos/services/logind.nix );

  openssh = ( import ./ssh.nix );

  pipewire = ( import ../../../modules/nixos/services/pipewire.nix );

  printing = ( import ../../../modules/nixos/services/printing.nix );

  tailscale = ( import ./tailscale.nix { inherit pkgs; } );

  power-profiles-daemon = ( import ./power-profile.nix { inherit pkgs; } );

  libinput = {
    enable = true;

    touchpad = ( import ../../../modules/nixos/touchpad.nix );
  };

  xserver = ( import ./xserver.nix );
}
