{ pkgs, config, ... }:
{

  package = pkgs.waybar;

  enable = true;
  settings = {
    bar = {
      layer = "top";
      modules-left = ["custom/logo" "disk" "cpu" "memory" "temperature"];
      modules-center = ["clock"];
      modules-right = [ "hyprland/workspaces" "backlight" "pulseaudio" "bluetooth" "battery" "network"];

      "pulseaudio" = {
        tooltip = false;
        scroll-step = 5;
        format = "{icon}  {volume}%";
        format-muted = "󰝟 ";
        format-icons = {
          default = ["" " " " "];
        };
      };

      "backlight" = {
        tooltip = false;
        format = "󰃞  {}%";
        interval = 1;
      };

      "battery" = {
        states = {
          good = 95;
          warning = 30;
          critical = 20;
        };
        format = "{icon}  {capacity}%";
        format-charging = "󱐋 {capacity}%";
        format-plugged = "  {capacity}%";
        format-alt = "{time} {icon}";
        format-icons = [" " " " " " " " " "];
      };

      "tray" = {
        icon-size = 18;
        spacing = 10;
      };

      "clock" = {
        interval = 1;
        format = "   {:%H:%M:%S}   ";
        tooltip = true;
        tooltip-format= "<tt><small>{calendar}</small></tt>";
        calendar= {
          mode          = "month";
          mode-mon-col  = 3;
          weeks-pos     = "right";
          on-scroll     = 1;
          on-click-right= "mode";
          format = {
            months = "<span color='#${config.colorScheme.palette.base06}'><b>{}</b></span>";
            days = "<span color='#${config.colorScheme.palette.base0E}'><b>{}</b></span>";
            weeks = "<span color='#${config.colorScheme.palette.base0C}'><b>W{}</b></span>";
            weekdays = "<span color='#${config.colorScheme.palette.base0A}'><b>{}</b></span>";
            today = "<span color='#${config.colorScheme.palette.base08}'><b><u>{}</u></b></span>";
          };
        };
      };

      "network"= {
        "format"= "{ifname}";
        "format-wifi"= "󰤨  {essid}  ";
        "format-ethernet"= "󰈁 {ifname} ";
        "format-disconnected"= "󰤭   ";
        "max-length"= 50;
      };

      "bluetooth"= {
        format-disabled= " 󰂲 ";
        format-off= " 󰂲 ";
        format-on= "  ";
        format-connected = " 󰂰 ";
      };

      "disk"= {
        "interval"= 60;
        "format"= "󰋊 {percentage_free}% ";
        "path"= "/";
      };

      "cpu" = {
        interval = 1;
        format = " 󰻠 {}% ";
        max-length = 10;
      };

      "memory" = {
        interval = 1;
        format = "   {}% ";
        max-length = 10;
      };

      "temperature" = {
        hwmon-path = "/sys/class/hwmon/hwmon2/temp1_input";
        critical-threshold = 90;
        interval = 1;
        format = "󰔏 {temperatureC}°C ";
        tooltip = false;
      };

      "custom/logo" = {
        format = "      ";
      };
    };
  };
}
