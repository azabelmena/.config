{ pkgs, ... }:
{
  openssh = ( import ./ssh.nix );

  avahi = ( import ./avahi.nix );

  acpid = ( import ./acpid.nix );

  xserver = ( import ./xserver.nix );

  pipewire = ( import ./pipewire.nix );

  printing = ( import ./printing.nix );

  tailscale = ( import ./tailscale.nix { inherit pkgs; } );

  displayManager = ( import ./displayManager.nix { inherit pkgs; } );
}
