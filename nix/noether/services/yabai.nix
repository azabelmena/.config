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
    yabai -m rule --add app="^kitty$" title="^kitty$"  manage=on
    yabai -m rule --add app="Preferences" manage=off layer=above
  '';
}
