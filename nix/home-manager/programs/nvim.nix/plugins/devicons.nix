{ pkgs, ... }:
{
  enable = true;

  package = pkgs.vimPlugins.nvim-web-devicons;

  settins = {
    color_icons = true;
    strict = true;
  };
}
