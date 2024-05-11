{  pkgs, ... }:

{
  package = pkgs.skhd;
  enable = true;
  skhdConfig = ''
    cmd - return      : kitty
    ctrl + cmd - z    : zathura

    cmd - t           : yabai --message window --toggle float && yabai --message window --grid 4:4:1:1:2:2
    cmd - f           : yabai --message window --toggle zoom-fullscreen

    cmd - h           : yabai --message window --focus west
    cmd - j           : yabai --message window --focus south
    cmd - k           : yabai --message window --focus north
    cmd - l           : yabai --message window --focus east

    cmd - tab         : yabai --message window --focus next || yabai --message window --focus first
    shift + cmd - tab : yabai --message window --focus prev || yabai --message window --focus last

    ctrl + cmd - tab  : yabai --message space --create
    shift + ctrl + cmd - tab  : yabai --message space --destroy

    ctrl + cmd - h    : yabai --message space --focus first
    ctrl + cmd - l    : yabai --message space --focus last

    cmd - 1           : yabai --message space --focus 1
    cmd - 2           : yabai --message space --focus 2
    cmd - 3           : yabai --message space --focus 3
    cmd - 4           : yabai --message space --focus 4
    cmd - 5           : yabai --message space --focus 5
    cmd - 6           : yabai --message space --focus 6
    cmd - 7           : yabai --message space --focus 7
    cmd - 8           : yabai --message space --focus 8
    cmd - 9           : yabai --message space --focus 9

    shift + cmd - 1   : yabai --message window --space 1 --focus
    shift + cmd - 2   : yabai --message window --space 2 --focus
    shift + cmd - 3   : yabai --message window --space 3 --focus
    shift + cmd - 4   : yabai --message window --space 4 --focus
    shift + cmd - 5   : yabai --message window --space 5 --focus
    shift + cmd - 6   : yabai --message window --space 6 --focus
    shift + cmd - 7   : yabai --message window --space 7 --focus
    shift + cmd - 8   : yabai --message window --space 8 --focus
    shift + cmd - 9   : yabai --message window --space 9 --focus

    # Swap Window
    shift + cmd - h   : yabai --message window --swap west
    shift + cmd - j   : yabai --message window --swap south
    shift + cmd - k   : yabai --message window --swap north
    shift + cmd - l   : yabai --message window --swap east

    #cmd + space      : for now its using the default keybinding to open Spotlight Search
  '';
}
