{ pkgs, ... }:
let
mod = "Super";
exit = "Ctrl+Alt+Delete";
in
{
  enable = true;
  package = pkgs.niri;

  settings = {
    prefer-no-csd = true;

    hotkey-overlay = {
      skip-at-startup = true;
    };

    input = {
      focus-follows-mouse.enable = true;
    };

    outputs = {
      "HDMI-A-1" = {
        mode = {
          width = 1920;
          height = 1080;
          refresh = 60.000;
        };
        scale = 1.0;
        position = {
          x = 0;
          y = 0;
        };
      };
    };

    spawn-at-startup = [
      { argv = [ "noctalia" ]; }
    ];

    binds = {
      "${mod}+Return".action.spawn = "foot";
      "${mod}+b".action.spawn = "qutebrowser";
      "${mod}+Space".action.spawn = "noctalia msg panel-toggle launcher";
      "${mod}+q".action.close-window = {};
      "${exit}".action.quit.skip-confirmation = true;
    };
  };
}
