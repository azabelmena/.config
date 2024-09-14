{ pkgs, ... }:
{
  package = pkgs.foot;
  enable = true;

  server.enable = true;

  settings = {
    main = {
      term = "xterm-256color";
      title = "I Love ";
      locked-title = "yes";
      bold-text-in-bright = "palette-based";
      workers = 4;
    };

    environment = {
      notify = "yes";
      scrollback = "5000";
    };

    cursor = {
      blink = "no";
      unfocused-style = "none";
    };

    mouse = {
      hide-when-typing = "yes";
      alternate-scroll-mode = "yes";
    };

    scd = {
      preferred = "none";
    };
  };
}
