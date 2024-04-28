{ pkgs, ...}:
{
  package = pkgs.spacebar;
  enable = true;
  config = {
    position                   = "top";
    display                    = "main";
    height                     = 35;
    title                      = "off";
    spaces                     = "on";
    clock                      = "on";
    power                      = "on";
    padding_left               = 20;
    padding_right              = 20;
    spacing_left               = 25;
    spacing_right              = 15;
    text_font                  = ''"BlexMono Nerd Font:Regular:14.0"'';
    icon_font                  = ''"BlexMono Nerd Font:Regular:14.0"'';
    background_color           = "0xff202020";
    foreground_color           = "0xffa8a8a8";
    power_icon_color           = "0xffcd950c";
    battery_icon_color         = "0xffd75f5f";
    dnd_icon_color             = "0xffa8a8a8";
    clock_icon_color           = "0xffa8a8a8";
    power_icon_strip           = " ";
    space_icon                 = "•";
    spaces_for_all_displays    = "on";
    display_separator          = "off";
    display_separator_icon     = "";
    space_icon_color           = "0xff458588";
    space_icon_color_secondary = "0xff78c4d4";
    space_icon_color_tertiary  = "0xfffff9b0";
    clock_icon                 = "";
    dnd_icon                   = "";
    clock_format               = ''"%d.%b.%Y %H.%M.%S"'';
    right_shell                = "off";
  };
}
