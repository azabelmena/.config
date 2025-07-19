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
      start_pages = "https://azabelmena.xyz/";
    };

    tabs = {
      last_close = "startpage";
    };

  };

  quickmarks = (import ./quickmarks.nix);

  keyBindings = {
    normal = {
      "M" = "hint links spawn mpv {hint-url}";
    };
  };
}
