{ pkgs, ... }:
let

  image = pkgs.fetchurl {
    url = "https://github.com/azabelmena/Wallpapers/blob/main/gruvbox/gruvbox-mountain-village.png?raw=true";
    hash = "sha256-JNzIzoF6JWSofgIpgs47tj7GUl8sCJrwLmd91EGc0Po=";
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
      widgets = {
        start = [
          "nixOS_logo" "cpu" "temp"
        ];
        center = [
          "cat" "clock" "cat_2"
        ];
        end = [
          "screenshot" "notifications" "clipboard" "network"
          "bluetooth" "audio_visualizer" "volume" "brightness"
          "battery" "session"
        ];
        font_family = "BlexMono Nerd Font";
        font_weight = 400;
        margin_edge = 0;
        margin_ends = 0;
        radius = 0;
        radius_top_left = -80;
        scale = 1.250000011175871;
        thickness = 25;
        widget_spacing = 10;
      };
    };
    calendar = {
      enabled = true;
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
      panel = {
        clipboard_placement = "attached";
        launcher_session_search = true;
      };
      session = {
        actions = [
          {
            action = "lock";
            enabled = true;
            shortcut = "1";
            variant = "default";
          }
          {
            action = "lock_and_suspend";
            enabled = true;
            shortcut = "2";
            variant = "default";
          }
          {
            action = "logout";
            enabled = true;
            shortcut = "3";
            variant = "default";
          }
          {
            action = "reboot";
            enabled = true;
            shortcut = "4";
            variant = "default";
          }
          {
            action = "shutdown";
            enabled = true;
            shortcut = "5";
            variant = "destructive";
          }
        ];
      };

      wallpaper = {
        enabled = true;
        fill_mode = "fit";
        default = {
          path = "${image}";
        };
      };

      lockscreen = {
        enabled = true;
        fingerprint = true;
        allow_empty_password = false;
        blurred_desktop = true;
        blur_intensity = 0.5;
        tint_intensity = 0;
        wallpaper = "${image}";
        monitors = [];
      };
    };

    widget = {
      cat = {
        audio_spectrum = true;
        rave_mode = true;
        tappy_mode = true;
        type = "noctalia/bongocat:cat";
        use_mpris_filter = true;
      };
      cat_2 = {
        audio_spectrum = true;
        rave_mode = true;
        tappy_mode = true;
        type = "noctalia/bongocat:cat";
        use_mpris_filter = true;
      };
      clock = {
        format = "{:%H.%M.%S}";
      };
      nixOS_logo = {
        color = "primary";
        glyph = "";
        icon_color = "primary";
        label = "";
        type = "custom_button";
      };
      recorder = {
        type = "noctalia/screen_recorder:recorder";
      };
      screenshot = {
        primary_click = "fullscreen";
      };
    };
  };
}
