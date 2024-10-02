{ pkgs, ... }:
{
  acpid = ( import ./acpid.nix );

  avahi = ( import ./avahi.nix );

  displayManager = ( import ./displayManager.nix { inherit pkgs; } );

  fprintd = ( import ./fprintd.nix { inherit pkgs; } );

  fwupd = ( import ./fwupd.nix { inherit pkgs; } );

  openssh = ( import ./ssh.nix );

  pipewire = ( import ./pipewire.nix );

  printing = ( import ./printing.nix );

  tailscale = ( import ./tailscale.nix { inherit pkgs; } );

  xserver = ( import ./xserver.nix );
}
