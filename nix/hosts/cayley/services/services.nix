{ pkgs, ... }:
{
  acpid = ( import ../../../modules/nixos/services/acpid.nix );

  avahi = ( import ../../../modules/nixos/services/avahi.nix );

  greetd = ( import ../../../modules/nixos/services/greetd.nix { inherit pkgs; } );

  jellyfin = ( import ./jellyfin.nix { inherit pkgs; } );

  logind = ( import ../../../modules/nixos/services/logind.nix );

  navidrome = ( import ./navidrome.nix { inherit pkgs; } );

  openssh = ( import ./ssh.nix );

  pipewire = ( import ../../../modules/nixos/services/pipewire.nix );

  printing = ( import ../../../modules/nixos/services/printing.nix );

  tailscale = ( import ./tailscale.nix { inherit pkgs; } );

  xserver = ( import ./xserver.nix );
}
