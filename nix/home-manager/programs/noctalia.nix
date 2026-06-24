{ pkgs, ... }:
let

background = pkgs.fetchurl {
  url = "https://github.com/azabelmena/Wallpapers/blob/main/gruvbox/gruvbox-mountain-village.png?raw=true";
  hash = "sha256-JNzIzoF6JWSofgIpgs47tj7GUl8sCJrwLmd91EGc0Po=";
};

avatar = pkgs.fetchurl {
  url = "https://github.com/azabelmena/Wallpapers/blob/main/gruvbox/cat-10-e1573844975155.jpg?raw=true";
  hash = "sha256-nXJSDjjKfcDNio8c/PB2767swiGHzK/mlurmr6J6tHI=";
};

in
{
  enable = true;

  settings = {
    theme = {
      mode = "dark";
      source = "builtin";
      builtin = "Gruvbox";
    };

    bar = {
      order = [
        "side_left" "side_right" "widgets" "bottom"
      ];

      "side_left" = {
        enabled = true;
        position = "left";
        start = [];
        center = [];
        end = [];
        margin_edge = 0;
        margin_ends = 0;
        radius = 0;
        thickness = 10;
      };

      "side_right" = {
        enabled = true;
        position = "right";
        start = [];
        center = [];
        end = [];
        margin_edge = 0;
        margin_ends = 0;
        radius = 0;
        thickness = 10;
      };

      widgets = {
        enabled = true;
        position = "top";
        start = [
          "nixOS_logo" "workspaces" "active_window"
        ];
        center = [
          "cat" "clock" "cat_2"
        ];
        end = [
          "screenshot"
            "notifications" "clipboard" "network"
            "bluetooth" "volume" "brightness"
            "battery" "session"
        ];
        font_family = "BlexMono Nerd Font";
        font_weight = 400;
        margin_edge = 0;
        margin_ends = 0;
        radius = 0;
        radius_bottom_left = -80;
        radius_bottom_right = -80;
        scale = 1.25;
        thickness = 25;
        widget_spacing = 10;
      };
      "bottom" = {
        enabled = true;
        position = "bottom";

        monitor = {
          "HDMI-A-1" = {
            match = "HDMI-A-1";
            start = [
              "cpu" "ram" "cpu_temp"
                "disk0" "disk1" "disk2" "disk3"
            ];
            center = [ "audio_visualizer" ];
            end = [ "net_up" "net_down" ];
          };
          "eDP-1" = {
            match = "eDP-1";
            start = [
              "cpu" "ram" "cpu_temp"
                "disk0" "disk4"
            ];
            center = [ "audio_visualizer" ];
            end = [ "net_up" "net_down" ];
          };
        };

        font_family = "BlexMono Nerd Font";
        font_weight = 400;
        margin_edge = 0;
        margin_ends = 0;
        radius = 0;
        radius_top_left = -80;
        radius_top_right = -80;
        scale = 1.25;
        thickness = 25;
        widget_spacing = 10;
      };
    };

    system.monitor = {
      enabled = true;
      cpu_poll_seconds = 2.0;
      gpu_poll_seconds = 2.0;
      memory_poll_seconds = 2.0;
      network_poll_seconds = 3.0;
      disk_poll_seconds = 60.0;
    };

    calendar = {
      enabled = true;
    };

    location = {
      auto_locate = false;
      address = "Carolina, PR";
      longitude = 18.3814441;
      latitude = 65.9560489;
    };

    weather = {
      enabled = true;
      refresh_minutes = 30;
      unit = "metric";
      effects = true;
    };

    nightlight = {
      enabled = true;
      force = false;

      temperature_day = "6500";
      temperature_night = "4000";
    };

    plugins = {
      enabled = [ "noctalia/bongocat" "noctalia/screen_recorder" "noctalia/timer" ];
    };

    shell = {
      clipboard_history_max_entries = 20;
      font_family = "BlexMono Nerd Font Mono";
      polkit_agent = true;
      password_style = "random";
      screen_time_enabled = true;
      settings_show_advanced = true;
      time_format = "%H.%M.%s";
      date_format = "%d.%m.%Y";

      avatar_path = "${avatar}";

      panel = {
        clipboard_placement = "attached";

        launcher_session_search = true;
        launcher_categories = false;
        launcher_show_icons = true;

        control_center_placement = true;
      };
      session = {
        actions = [
        {
          action = "lock";
          enabled = true;
          variant = "default";
        }
        {
          action = "lock_and_suspend";
          enabled = true;
          variant = "default";
        }
        {
          action = "logout";
          enabled = true;
          variant = "default";
        }
        {
          action = "reboot";
          enabled = true;
          variant = "default";
        }
        {
          action = "shutdown";
          enabled = true;
          variant = "destructive";
        }
        ];
      };

      lockscreen = {
        enabled = true;
        fingerprint = true;
        allow_empty_password = false;
        blurred_desktop = true;
        blur_intensity = 0.5;
        tint_intensity = 0;
        wallpaper = "${background}";
      };
    };

    wallpaper = {
      enabled = true;
      fill_mode = "center";
      default = {
        path = "${background}";
      };
    };

    widget = {

      active_window = {
        min_length = 80;
        max_length = 260;
        icon_size = 14;
        title_scroll = true;
        display = "icon_and_text";
        show_empty_label = false;
      };

      audio_visualizer = {
        bands = 128;
        color_1 = "primary";
        color_2 = "secondary";
        show_when_idle = true;
        width = 400;
      };

      screenshot = {
        glyph = "camera";
        primary_click = "fullscreen";
      };

      cat = {
        audio_spectrum = true;
        rave_mode = true;
        tappy_mode = true;
        type = "noctalia/bongocat:cat";
        use_mpris_filter = true;
      };
      clock = {
        format = "{:%H.%M.%S}";
      };
      cat_2 = {
        audio_spectrum = true;
        rave_mode = true;
        tappy_mode = true;
        type = "noctalia/bongocat:cat";
        use_mpris_filter = true;
      };

      nixOS_logo = {
        color = "primary";
        glyph = "";
        icon_color = "primary";
        label = "";
        type = "custom_button";
      };
      cpu= {
        type = "sysmon";
        stat = "cpu_usage";
      };
      gpu = {
        type = "sysmon";
        stat = "gpu_usage";
      };
      ram = {
        type = "sysmon";
        stat = "ram_used";
      };
      cpu_temp = {
        type = "sysmon";
        stat = "cpu_temp";
      };
      gpu_temp = {
        type = "sysmon";
        stat = "gpu_temp";
      };

      disk0 = {
        type = "sysmon";
        glyph = "device-floppy";
        stat = "disk_pct";
        path = "/";
      };
      disk1 = {
        type = "sysmon";
        glyph = "disc";
        stat = "disk_pct";
        path = "/home/alec/Audio";
      };
      disk2 = {
        type = "sysmon";
        glyph = "player-track-next";
        stat = "disk_pct";
        path = "/home/alec/Video";
      };
      disk3 = {
        type = "sysmon";
        glyph = "brand-steam";
        stat = "disk_pct";
        path = "/home/alec/Games";
      };
      disk4 = {
        type = "sysmon";
        glyph = "database";
        stat = "disk_pct";
        path = "/home/alec/storage";
      };

      net_up = {
        type = "sysmon";
        stat = "net_tx";
      };
      net_down = {
        type = "sysmon";
        stat = "net_rx";
      };

      battery = {
        type = "battery";
        device = "BAT1";
      };
    };
  };
}
