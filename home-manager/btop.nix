{ pkgs, ... }:
{

  package = pkgs.btop;
  enable = true;

  settings = {
    #color_theme = "gruvbox_dark";

    theme_background = false;

    truecolor = true;

    force_tty = false;

    vim_keys = true;

    shown_boxes = "cpu mem net proc";

    update_ms = 100;

    rounded_corners=false;

    graph_symbol = "braille";

    clock_format = "%H.%M.%S";

    base_10_sizes = false;

    background_update = false;

    show_battery = true;

    selected_battery = "auto";

    log_level = "warning";
  };

}
