{ pkgs, ... }:
{
  package = pkgs.yabai;
  enable = true;
  enableScriptingAddition = true;
  config = {
    layout = "bsp";
    auto_balance = "off";
    split_ratio = "0.50";
    window_border = "on";
    window_border_width = "10";
    window_placement = "second_child";
    focus_follows_mouse = "off";
    mouse_follows_focus = "off";
    top_padding = "10";
    bottom_padding = "10";
    left_padding = "10";
    right_padding = "10";
    window_gap = "10";
  };
  extraConfig=''
    sudo yabai --load-sa
    echo "yabai configuration loaded..."

    yabai -m rule --add title='Preferences' manage=off layer=above
    yabai -m rule --add app='^System Preferences$' manage=off layer=above
    yabai -m rule --add app='Activity Monitor' manage=off layer=above
    yabai -m rule --add app='Finder' manage=off layer=above
    yabai -m rule --add app='^System Information$' manage=off layer=above
  '';
}
