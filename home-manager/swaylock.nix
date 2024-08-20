{ pkgs, config, ... }:
{

  package = pkgs.swaylock-effects;

  enable = true;

  settings = {
    daemonize = true;
    fade-in = 0;
    ignore-empty-password = true;

    indicator-radius = 150;
    indicator-caps-lock = false;
    indicator-idle-visible = true;

    show-failed-attempts = false;

    clock = true;
    timestr = "%H:%M:%S";
    datestr = "%d.%b.%Y";

    effect-blur = "8x1";

    grace = 0;
    grace-no-mouse = true;
    grace-no-touch = true;

  };

}
