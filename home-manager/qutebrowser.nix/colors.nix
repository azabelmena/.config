{ pkgs, config, ...}:
{
  completion = {
    fg = "#${config.colorScheme.palette.base06}";
    odd.bg = "#${config.colorScheme.palette.base00}";
    even.bg = "#${config.colorScheme.palette.base00}";

    category = {
      bg = "#${config.colorScheme.palette.base0C}";
      fg = "#${config.colorScheme.palette.base0C}";

      border.top    ="#${config.colorScheme.palette.base0D}";
      border.bottom ="#${config.colorScheme.palette.base0D}";
    };

    item = {
      selected.fg = "#${config.colorScheme.palette.base07}";
      selected.bg = "#${config.colorScheme.palette.base02}";
      selected.border.top = "#${config.colorScheme.palette.base02}";
      selected.border.bottom = "#${config.colorScheme.palette.base02}";
      selected.match.fg = "#${config.colorScheme.palette.base09}";
    };

    match.fg = "#${config.colorScheme.palette.base09}";

    scrollbar.fg = "#${config.colorScheme.palette.base09}";
    scrollbar.bg = "#${config.colorScheme.palette.base0D}";

  };

  contextmenu = {
    disabled.bg = "#${config.colorScheme.palette.base03}";
    disabled.fg = "#${config.colorScheme.palette.base04}";

    menu.bg = "#${config.colorScheme.palette.base00}";
    menu.fg = "#${config.colorScheme.palette.base05}";

    selected.fg = "#${config.colorScheme.palette.base02}";
    selected.bg = "#${config.colorScheme.palette.base02}";
  };

  downloads = {
    bar.bg = "#${config.colorScheme.palette.base00}";

    start.fg = "#${config.colorScheme.palette.base00}";
    start.bg = "#${config.colorScheme.palette.base0B}";
    stop.fg = "#${config.colorScheme.palette.base00}";
    stop.bg = "#${config.colorScheme.palette.base0D}";
    error.fg = "#${config.colorScheme.palette.base08}";
  };

  hints = {
    fg = "#${config.colorScheme.palette.base00}";
    bg = "#${config.colorScheme.palette.base0A}";

    match.fg = "#${config.colorScheme.palette.base02}";
  };

  keyhint = {
    fg = "#${config.colorScheme.palette.base05}";
    bg = "#${config.colorScheme.palette.base00}";
    suffix.fg = "#${config.colorScheme.palette.base07}";
  };

  messages = {
    error.fg = "#${config.colorScheme.palette.base00}";
    error.bg = "#${config.colorScheme.palette.base08}";
    error.border = "#${config.colorScheme.palette.base08}";

    warning.fg = "#${config.colorScheme.palette.base00}";
    warning.bg = "#${config.colorScheme.palette.base0E}";
    warning.border = "#${config.colorScheme.palette.base0E}";

    info.fg = "#${config.colorScheme.palette.base05}";
    info.bg = "#${config.colorScheme.palette.base00}";
    info.border = "#${config.colorScheme.palette.base00}";
  };

  prompts = {
    fg = "#${config.colorScheme.palette.base05}";
    bg = "#${config.colorScheme.palette.base03}";
    border = "#${config.colorScheme.palette.base01}";
    selected.bg = "#${config.colorScheme.palette.base02}";
  };

  statusbar = {
    normal = {
      fg = "#${config.colorScheme.palette.base05}";
      bg = "#${config.colorScheme.palette.base00}";
    };

    insert = {
      fg = "#${config.colorScheme.palette.base00}";
      bg = "#${config.colorScheme.palette.base0C}";
    };

    passthrough = {
      fg = "#${config.colorScheme.palette.base05}";
      bg = "#${config.colorScheme.palette.base0D}";
    };

    private = {
      fg = "#${config.colorScheme.palette.base0E}";
      bg = "#${config.colorScheme.palette.base00}";
    };

    command = {
      fg = "#${config.colorScheme.palette.base05}";
      bg = "#${config.colorScheme.palette.base01}";

      private.fg = "#${config.colorScheme.palette.base0E}";
      private.bg = "#${config.colorScheme.palette.base01}";
    };

    caret = {
      fg = "#${config.colorScheme.palette.base00}";
      bg = "#${config.colorScheme.palette.base0E}";

      selection.fg = "#${config.colorScheme.palette.base00}";
      selection.bg = "#${config.colorScheme.palette.base0E}";
    };

    progress = {
      bg = "#${config.colorScheme.palette.base0C}";
    };

    url = {
      fg = "#${config.colorScheme.palette.base07}";

      error.fg = "#${config.colorScheme.palette.base08}";
      hover.fg = "#${config.colorScheme.palette.base09}";
      success.http.fg = "#${config.colorScheme.palette.base00}";
      warn.fg = "#${config.colorScheme.palette.base0E}";
    };
  };

    tabs = {
      bar.bg = "#${config.colorScheme.palette.base00}";

      indicator.start = "#${config.colorScheme.palette.base0C}";
      indicator.stop = "#${config.colorScheme.palette.base0D}";
      indicator.error = "#${config.colorScheme.palette.base08}";

      odd.fg = "#${config.colorScheme.palette.base05}";
      odd.bg = "#${config.colorScheme.palette.base02}";
      even.fg = "#${config.colorScheme.palette.base05}";
      even.bg = "#${config.colorScheme.palette.base03}";


      selected.odd.fg = "#${config.colorScheme.palette.base02}";
      selected.odd.bg = "#${config.colorScheme.palette.base04}";
      selected.even.fg = "#${config.colorScheme.palette.base02}";
      selected.even.bg = "#${config.colorScheme.palette.base04}";

      pinned.selected.odd.fg = "#${config.colorScheme.palette.base02}";
      pinned.selected.odd.bg = "#${config.colorScheme.palette.base0B}";
      pinned.selected.even.fg = "#${config.colorScheme.palette.base02}";
      pinned.selected.even.bg = "#${config.colorScheme.palette.base0B}";
    };


  webpage.bg = "#${config.colorScheme.palette.base03}";
}
