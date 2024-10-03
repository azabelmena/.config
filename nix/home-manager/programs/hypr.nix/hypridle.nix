{ pkgs, ... }:
{

  enable = true;
  package = pkgs.hypridle;

  settings = {
    general = {
      after_sleep_cmd = "pidof hyprlock || hyprlock --immediate";
      ignore_dbus_inhibit = false;
      lock_cmd = "pidof hyprlock || hyprlock --immediate";
    };

    listener = [
      {
        timeout = 300;
        on-timeout = "pidof hyprlock || hyprlock --immediate";
      }
      {
        timeout = 500;
        on-timeout = "systemctl suspend";
      }
    ];
  };

}
