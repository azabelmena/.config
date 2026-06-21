{ pkgs, ... }:
{

  package = pkgs.hyprland;

  enable = true;
  xwayland.enable = true;
  systemd.enable = true;

  configType = "hyprlang";

  settings = {

    exec-once = [
      "noctalia"
      "mako"
      "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
      "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
    ];

    input = {
      kb_layout = "us";
      follow_mouse = 1;
      mouse_refocus = false;
      sensitivity = 0;
    };

   general = {
      gaps_in = 5;
      gaps_out = 10;
      border_size = 1;
      layout = "scrolling";
    };

    render = {
      direct_scanout = false;
    };

    cursor = {
      inactive_timeout = 1;
    };

    decoration = {

      active_opacity = 1;
      inactive_opacity = 1.00;

      shadow = {
        enabled = true;
        range = 4;
        render_power = 3;
      };

      rounding = 0;


      blur = {
        enabled = false;
        size = 8;
        passes = 1;
        ignore_opacity = true;
        new_optimizations = true;
        xray = true;
      };
    };


    animations = {
      enabled = true;
      bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";

      animation = [
        "windows, 1, 7, myBezier"
        "windowsOut, 1, 7, default, popin 80%"
        "border, 1, 10, default"
        "borderangle, 1, 8, default"
        "fade, 1, 7, default"
        "workspaces, 1, 6, default"
      ];
    };

    dwindle = {
      preserve_split = true;
    };

    scrolling = {
      fullscreen_on_one_column = true;
      column_width = 0.5;
      focus_fit_method = 1;
      follow_focus = true;
    };

    misc = {
      enable_swallow = true;
      swallow_regex="^(foot)$";
    };
  };

  extraConfig = ''
    $mod_main = SUPER
    $mod_shift = SUPER SHIFT
    $mod_exit = CTRL_L ALT_L

    bind = $mod_main, RETURN, exec, foot
    bind = $mod_main, B, exec, qutebrowser
    bind = $mod_main, Z, exec, zathura
    bind = $mod_main, SPACE, exec, fuzzel

    bind = $mod_main, R, exec, hyprlock reload
    bind = $mod_main, Q, killactive,
    bind = $mod_main, DELETE, exec, hyprlock --grace 3 --immediate-render
    bind = $mod_exit, DELETE, exit

    bind = $mod_main, T, togglefloating,
    bind = $mod_main, P, pseudo, # dwindle
    bind = $mod_main, TAB, cyclenext
    bind = $mod_shift, TAB, cyclenext, prev
    bind = $mod_main, F, fullscreen

    bind = $mod_main, h, movefocus, l
    bind = $mod_main, j, movefocus, d
    bind = $mod_main, k, movefocus, u
    bind = $mod_main, l, movefocus, r

    bind = $mod_shift, h, swapwindow, l
    bind = $mod_shift, j, swapwindow, d
    bind = $mod_shift, k, swapwindow, u
    bind = $mod_shift, l, swapwindow, r

    bind = $mod_main, mouse_down, workspace, e+1
    bind = $mod_main, mouse_up, workspace, e-1

    bindm = $mod_main, mouse:272, movewindow
    bindm = $mod_main, mouse:273, resizewindow
  '';
}
