{ pkgs, ... }:
{

  enable = true;
  package = pkgs.hypridle;

  settings = {
    general = {
      before_sleep_cmd = "hyprctl dispatch dpms on";
      ignore_dbus_inhibit = false;
      lock_cmd = "pidof hyprlock || hyprlock";
    };

    listener = [
      {
        timeout = 300;
        on-timeout = "pidof hyprlock || hyprlock";
      }
      {
        timeout = 500;
        on-timeout = "systemctl suspend";
      }
    ];
  };

}
