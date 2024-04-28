{ pkgs, config, ... }:
{

  package = pkgs.hyprland;

  enable = true;
  xwayland.enable = true;
  systemd.enable = true;

  settings = {

    exec-once = [
      "waybar &  mako"
      "wlsunset -S 06:30 -s 18:30"
      "${pkgs.swaybg}/bin/swaybg -i ~/Pictures/Wallpapers/gruvbox-mountain-village.png"
      "swayidle -w timeout 300 'swaylock' before-sleep 'swaylock"
      "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
      "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
      "hyprctl setcursor GoogleDot-Black 16"
    ];

    env = [
      "XCURSOR_SIZE,24"
      "WLR_NO_HARDWARE_CURSORS,1"
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
      border_size = 0;
      layout = "dwindle";
      cursor_inactive_timeout = 1;
      "col.active_border" = "0xff${config.colorScheme.palette.base08}";
      "col.inactive_border" = "0xff${config.colorScheme.palette.base00}";
    };

    decoration = {

      active_opacity = 1;
      inactive_opacity = 0.75;

      rounding = 0;
      drop_shadow = true;
      shadow_range = 4;
      shadow_render_power = 3;

      blur = {
        enabled = true;
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
      pseudotile = true;
      preserve_split = true;
    };

    misc = {
      enable_swallow = true;
      swallow_regex="^(kitty)$";
      no_direct_scanout = true;
    };
  };

  extraConfig = ''
    $mod_main = SUPER
    $mod_shift = SUPER SHIFT
    $mod_exit = CTRL_L ALT_L

    bind = $mod_main, RETURN, exec, kitty
    bind = $mod_main, B, exec, qutebrowser
    bind = $mod_main, V, exec, vifm
    bind = $mod_main, Z, exec, zathura
    bind = $mod_main, SPACE, exec, rofi -show drun
    bind = $mod_shift, SPACE, exec, rofi -show window

    bind = $mod_main, Q, killactive,
    bind = $mod_exit, DELETE, exit,
    bind = $mod_main, ESCAPE, exec, swaylock --config ~/.config/swaylock/config

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

    bind = $mod_main, 1, workspace, 1
    bind = $mod_main, 2, workspace, 2
    bind = $mod_main, 3, workspace, 3
    bind = $mod_main, 4, workspace, 4
    bind = $mod_main, 5, workspace, 5
    bind = $mod_main, 6, workspace, 6
    bind = $mod_main, 7, workspace, 7
    bind = $mod_main, 8, workspace, 8
    bind = $mod_main, 9, workspace, 9
    bind = $mod_main, 0, workspace, 10

    bind = $mod_main SHIFT, 1, movetoworkspacesilent, 1
    bind = $mod_main SHIFT, 2, movetoworkspacesilent, 2
    bind = $mod_main SHIFT, 3, movetoworkspacesilent, 3
    bind = $mod_main SHIFT, 4, movetoworkspacesilent, 4
    bind = $mod_main SHIFT, 5, movetoworkspacesilent, 5
    bind = $mod_main SHIFT, 6, movetoworkspacesilent, 6
    bind = $mod_main SHIFT, 7, movetoworkspacesilent, 7
    bind = $mod_main SHIFT, 8, movetoworkspacesilent, 8
    bind = $mod_main SHIFT, 9, movetoworkspacesilent, 9
    bind = $mod_main SHIFT, 0, movetoworkspacesilent, 10

    bind = $mod_main, mouse_down, workspace, e+1
    bind = $mod_main, mouse_up, workspace, e-1

    bindm = $mod_main, mouse:272, movewindow
    bindm = $mod_main, mouse:273, resizewindow
  '';
}
