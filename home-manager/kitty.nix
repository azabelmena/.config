{ pkgs, config, ... }:
{

  package = pkgs.kitty;

  enable = true;

  font = {
          name = "BlexMono Nerd Font Mono";
          size = 12;
  };

  keybindings = {
      "ctrl+shift+l" = "next_tab";
      "ctrl+shift+h" = "previous_tab";

      "ctrl+shift+delete" = "clear_terminal reset active";
      "ctrl+shift+f" = "toggle_fullscreen";
      "ctrl+shift+t" = "no_op";
  };

  settings = {
      enable_audio_bell = "no";
      remember_window_size = "yes";
      confirm_os_window_close = "0";
      hide_window_decorations = "yes";
      cursor_blink_interval = 0;

      macos_hide_from_tasks = "yes";
      macos_quit_when_last_window_closed = "yes";

      cursor = "#${config.colorScheme.palette.base06}";
      cursor_text_color = "#${config.colorScheme.palette.base00}";
      foreground = "#${config.colorScheme.palette.base06}";
      background = "#${config.colorScheme.palette.base00}";
      selection_background = "#${config.colorScheme.palette.base09}";
      selection_foreground = "#${config.colorScheme.palette.base03}";

      color0 = "#${config.colorScheme.palette.base00}";
      color1 = "#${config.colorScheme.palette.base08}";
      color2 = "#${config.colorScheme.palette.base0B}";
      color3 = "#${config.colorScheme.palette.base0A}";
      color4 = "#${config.colorScheme.palette.base0D}";
      color5 = "#${config.colorScheme.palette.base0E}";
      color6 = "#${config.colorScheme.palette.base0C}";
      color7 = "#${config.colorScheme.palette.base06}";
      color8 = "#${config.colorScheme.palette.base04}";

      macos_colorspace = "srgb";
  };
}
