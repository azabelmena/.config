{ pkgs, ... }:
{
  enable = true;

  settings = {

    general = {
      autostart = [
        "noctalia"
      ];

      nvidia_sync_workaround = true;

      show_cheatsheet = false;
    };

    layout = {
      mode = "dwindle";
      gap = 5;
    };

    input = {
      cursor = {
        hardware_cursor = true;
        follows_focus = true;
        hide_when_typing = true;
        hide_timeout_ms = 1000;
      };

      focus = {
        follows_mouse = "sloppy";
        hover_raises = true;
      };
    };

    output = {
      "HDMI-A-1" = {
        mode = "1920x1080@60";
        position = [0 0];
        scale = 1.0;

        workspaces = "dynamic";
        workspace_axis = "horizontal";
      };

      "eDP-1" = {
        mode = "2560x1600@165";
        position = [0 0];
        scale = 1.5;

        workspaces = "dynamic";
        workspace_axis = "horizontal";
      };
    };

    keybinds = ( import ./keybinds.nix );
  };

}
