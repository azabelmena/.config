{ pkgs, ... }:
{
  rtkit.enable = true;

  forcePageTableIsolation = false;

  polkit = ( import ../../modules/nixos/polkit.nix );

  sudo = {
    enable = true;
    wheelNeedsPassword = true;
    execWheelOnly = true;
  };
}
