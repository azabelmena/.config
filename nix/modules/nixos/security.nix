{ pkgs, ... }:
{
  rtkit.enable = true;

  forcePageTableIsolation = false;


  polkit = ( import ./polkit.nix );

  sudo = {
    enable = true;
    wheelNeedsPassword = true;
    execWheelOnly = true;
  };
}
