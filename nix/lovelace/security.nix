{ pkgs, ... }:
{
  rtkit.enable = true;

  audit = {
    enable = true;

    backlogLimit = 512;
    rateLimit = 1000;
  };

  sudo = {
    enable = true;
    wheelNeedsPassword = false;
    execWheelOnly = true;
  };
}
