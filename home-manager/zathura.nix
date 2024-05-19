{ pkgs, config, ... }:
{
  package = pkgs.zathura;
  enable = true;

  mappings = {
    "[normal] d"        = "scroll half-down";
    "[normal] D"        = "scroll half-up";
    "[normal] r"        = "reload";
    "[normal] i"        = "recolor";
    "[normal] p"        = "print";
    "[normal] Space"    = "navigate next";
  };
 options = {
    guioptions = "none";

    #completion-group-bg = "#${config.colorScheme.palette.base00}";
    #completion-group-fg = "#${config.colorScheme.palette.base00}";

    #completion-bg = "#${config.colorScheme.palette.base00}";
    #completion-fg = "#${config.colorScheme.palette.base06}";

    #completion-highlight-bg = "#${config.colorScheme.palette.base09}";
    #completion-highlight-fg = "#${config.colorScheme.palette.base03}";

    #statusbar-h-padding = 0;
    #statusbar-v-padding = 0;

    #notification-error-bg = "#${config.colorScheme.palette.base08}";
    #notification-error-fg = "#${config.colorScheme.palette.base03}";
    #notification-warning-bg = "#${config.colorScheme.palette.base0A}";
    #notification-warning-fg = "#${config.colorScheme.palette.base00}";
    #notification-bg = "#${config.colorScheme.palette.base0B}";
    #notification-fg = "#${config.colorScheme.palette.base00}";

    #index-bg = "#${config.colorScheme.palette.base00}";
    #index-fg = "#${config.colorScheme.palette.base06}";
    #index-active-bg = "#${config.colorScheme.palette.base09}";
    #index-active-fg = "#${config.colorScheme.palette.base03}";

    #inputbar-bg = "#${config.colorScheme.palette.base09}";
    #inputbar-fg = "#${config.colorScheme.palette.base00}";

    #statusbar-bg = "#${config.colorScheme.palette.base00}";
    #statusbar-fg = "#${config.colorScheme.palette.base06}";

    #highlight-color = "#${config.colorScheme.palette.base09}";
    #highlight-fg = "#${config.colorScheme.palette.base03}";
    #highlight-active-color = "#${config.colorScheme.palette.base0B}";

    #default-bg = "#${config.colorScheme.palette.base00}";
    #default-fg = "#${config.colorScheme.palette.base06}";

    #recolor-lightcolor = "#${config.colorScheme.palette.base00}";
    #recolor-darkcolor  = "#${config.colorScheme.palette.base06}";
    recolor-keephue = true;
    recolor-reverse-video = true;

    page-padding = 1;
    recolor = true;
    selection-clipboard = "clipboard";
    selection-notification = false;
  };
}
