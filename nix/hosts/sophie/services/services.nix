{ pkgs, ... }:
{
  acpid = ( import ./acpid.nix );

  avahi = ( import ./avahi.nix );

  displayManager = ( import ./displayManager.nix { inherit pkgs; } );

  fprintd = ( import ./fprintd.nix { inherit pkgs; } );

  fwupd = ( import ./fwupd.nix { inherit pkgs; } );

  tlp = ( import ../../../modules/nixos/services/tlp.nix );

  logind = ( import ../../../modules/nixos/services/logind.nix );

  openssh = ( import ./ssh.nix );

  pipewire = ( import ./pipewire.nix );

  printing = ( import ./printing.nix );

  tailscale = ( import ./tailscale.nix { inherit pkgs; } );

  xserver = ( import ./xserver.nix );
}
