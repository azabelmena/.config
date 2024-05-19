{ pkgs, config, ... }:
#let
  #imgLink = "https://github.com/azabelmena/Wallpapers/blob/main/gruvbox-mountain-village.png?raw=true";

  #image = pkgs.fetchurl {
    #url = imgLink;
    #sha256 = "1ynhki0x8zb75vq9l21cbx9ccgmn7g784a82gsl689bsh77cip14";
  #};
#in
{

  package = pkgs.swaylock-effects;

  enable = true;

  settings = {
    daemonize = true;
    fade-in = 0;
    #font-size = 24;
    ignore-empty-password = true;

    #image = "${image}";

    indicator-radius = 150;
    indicator-caps-lock = false;
    indicator-idle-visible = true;
    #line-color = "#${config.colorScheme.palette.base00}";

    show-failed-attempts = false;

    clock = true;
    timestr = "%H:%M:%S";
    datestr = "%d.%b.%Y";

    effect-blur = "8x1";

    grace = 0;
    grace-no-mouse = true;
    grace-no-touch = true;

    #ring-clear-color = "#${config.colorScheme.palette.base09}";
    #ring-color = "#${config.colorScheme.palette.base08}";
    #ring-ver-color = "#${config.colorScheme.palette.base0A}";
    #ring-wrong-color = "#${config.colorScheme.palette.base0B}";

    #inside-clear-color = "#${config.colorScheme.palette.base0E}";
    #inside-color = "#${config.colorScheme.palette.base0B}";
    #inside-ver-color = "#${config.colorScheme.palette.base0D}";
    #inside-wrong-color = "#${config.colorScheme.palette.base08}";

    #text-color = "#${config.colorScheme.palette.base00}";
    #text-clear-color = "#${config.colorScheme.palette.base00}";
    #text-caps-lock-color = "#${config.colorScheme.palette.base00}";
    #text-ver-color = "#${config.colorScheme.palette.base00}";
    #text-wrong-color = "#${config.colorScheme.palette.base00}";

    #key-hl-color = "#${config.colorScheme.palette.base09}";

  };

}
