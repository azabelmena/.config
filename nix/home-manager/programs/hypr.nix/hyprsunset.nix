{ pkgs, ... }:
{
  enable = true;
  package = pkgs.hyprsunset;

  settings = {
    max-gamma = 150;

    profile = [
      {
        time = "6:30";
        identity = true;
      }
      {
        time = "18:30";
        temperature = "5000";
        gamma = 0.8;
      }
    ];
  };
}
