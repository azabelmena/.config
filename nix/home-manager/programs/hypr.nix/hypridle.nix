{ pkgs, ... }:
{

  enable = true;
  package = pkgs.hypridle;

  settings = {
    general = {
      lock_cmd = "pidof hyprlock || hyprlock";
    };

    listener = [
      {
        timeout = 300;
        on-timeout = "pidof hyprlock || hyprlock";
      }
    ];
  };

}
