{ pkgs, ... }:
{

  enable = true;
  package = pkgs.hypridle;

  settings = {
    general = {
      after_sleep_command = "pidof hyprlock || hyprlock --immediate --immediate-render";
      ignore_dbus_inhibit = false;
      lock_cmd = "pidof hyprlock || hyprlock --immediate --immediate-render";
    };

    listener = [
      {
        timeout = 256;
        on-timeout = "pidof hyprlock || hyprlock --immediate --immediate-render";
      }
      {
        timeout = 512;
        on-timeout = "systemctl suspend";
      }
    ];
  };

}
