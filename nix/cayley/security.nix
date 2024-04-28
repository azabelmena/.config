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

  pam.services.swaylock = {
    text = ''
      auth include login
    '';
  };

  sudo = {
    enable = true;
    wheelNeedsPassword = true;
    execWheelOnly = true;
  };
}
