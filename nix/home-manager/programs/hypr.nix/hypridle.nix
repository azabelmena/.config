{ pkgs, ... }:
{

  enable = true;
  package = pkgs.hypridle;

  settings = {
    general = {
      before_sleep_cmd = "pidof hyprlock || hyprlock --immediate --immediate-render";
      ignore_dbus_inhibit = false;
      lock_cmd = "pidof hyprlock || hyprlock";
    };

    listener = [
      {
        timeout = 256;
        on-timeout = "pidof hyprlock || hyprlock";
      }
      {
        timeout = 512;
        on-timeout = "systemctl suspend";
      }
    ];
  };

}
