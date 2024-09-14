{ pkgs, ... }:
{
  rtkit.enable = true;

  forcePageTableIsolation = false;

  audit = {
    enable = true;

    backlogLimit = 512;
    rateLimit = 1000;
  };

  polkit = ( import ../../modules/nixos/polkit.nix );

  sudo = {
    enable = true;
    wheelNeedsPassword = true;
    execWheelOnly = true;
  };
}
