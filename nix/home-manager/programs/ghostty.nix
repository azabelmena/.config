{ pkgs, ... }:
{
  enable = true;

  package = pkgs.ghostty;

  settings = {
    title = "I Love being Ghostted";
    auto-update = "off";
    confirm-close-surface = false;

    gtk-titlebar = false;
    gtk-adwaita = false;

    mouse-hide-while-typing = true;

    scrollback-limit = 500;

    link-url = true;

    window-vsync = true;

    quit-after-last-window-closed = true;

    shell-integration = "zsh";
    shell-integration-features = "cursor, title, sudo";
  };
}
