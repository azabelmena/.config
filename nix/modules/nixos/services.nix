{ pkgs, ... }:
{
  openssh = ( import ./services/ssh.nix );

  avahi = ( import ./services/avahi.nix );

  minecraft = ( import ./services/minecraft.nix );

  acpid = ( import ./services/acpid.nix );

  xserver = ( import ./services/xserver.nix );

  pipewire = ( import ./services/pipewire.nix );

  printing = ( import ./services/printing.nix );

  tailscale = ( import ./services/tailscale.nix { inherit pkgs; } );

  displayManager = ( import ./services/displayManager.nix { inherit pkgs; } );
}
