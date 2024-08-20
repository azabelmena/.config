{ pkgs, config, ... }:
{

  package = pkgs.kitty;

  enable = true;

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
<<<<<<< HEAD
      hide_window_decorations = "titlebar-only";
=======
>>>>>>> parent of eca0d85 (Fixed bug)
      cursor_blink_interval = 0;

      macos_hide_from_tasks = "yes";
      macos_quit_when_last_window_closed = "yes";

      macos_colorspace = "srgb";
  };
}
