{ pkgs, ... }:
let
  mod = "Alt";
in
{
  enable = true;
  package = pkgs.niri;

  settings = {
    binds = {
      "${mod}+Return".action.spawn = "foot";
      "${mod}+B".action.spawn = "qutebrowser";
      "${mod}+Space".action.spawn = "fuzzel";
    };
  };
}
