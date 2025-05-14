{ pkgs, ... }:
{
  enable = true;

  package = pkgs.vimPlugins.lean-nvim;

  settings = {
    infoview = {
      autoopen = false;
      height = 10;
      horizontal_position = "bottom";
    };
  };
}
