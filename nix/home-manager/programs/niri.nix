{ pkgs, ... }:
{
  enable = true;
  package = pkgs.niri;

  settings = {
    binds = {
      "Super+Return".action.spawn = "foot";
    };
  };
}
