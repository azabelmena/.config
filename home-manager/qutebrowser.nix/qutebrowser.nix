{pkgs, config, ...}:
{

  package = pkgs.qutebrowser;

  enable = true;

  enableDefaultBindings = true;

  settings = {
    tabs.background = false;
    new_instance_open_target = "window";
    downloads.position = "bottom";
    search.incremental = false;
    content.javascript.enabled = true;

    url = {
      default_page = "https://www.duckduckgo.com/";
      start_pages = "https://azabelmena.github.io/";
    };

    tabs = {
      last_close = "startpage";
    };

    fonts = {
      tabs.selected = "BlexMono Nerd Font";
      tabs.unselected = "BlexMono Nerd Font";
      hints = "BlexMono Nerd Font";
      statusbar = "BlexMono Nerd Font";
      web.family.fantasy = "BlexMono Nerd Font";
    };

    colors = (import ./colors.nix { inherit pkgs config; });

  };

  quickmarks = (import ./quickmarks.nix);

  keyBindings = {
    normal = {
      "M" = "hint links spawn mpv {hint-url}";
    };
  };
}
