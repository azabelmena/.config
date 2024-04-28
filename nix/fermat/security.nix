{ pkgs, ... }:
{
  rtkit.enable = true;

  audit = {
    enable = false;

    backlogLimit = 512;
    rateLimit = 1000;
  };

  sudo = {
    enable = true;
    wheelNeedsPassword = false;
    execWheelOnly = true;
  };

}
