{ pkgs, ... }:
{
  rtkit.enable = true;

forcePageTableIsolation = false;

audit = {
  enable = true;

  backlogLimit = 512;
  rateLimit = 1000;
};

  polkit = ( import ./polkit.nix );

  pam = ( import ./pam.nix { inherit pkgs; } );

  sudo = {
    enable = true;
    wheelNeedsPassword = true;
    execWheelOnly = true;
  };
}
