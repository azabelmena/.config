{ pkgs, ... }:
{
  enable = true;

  package = pkgs.vimPlugins.nvim-web-devicons;

  settings = {
    color_icons = true;
    strict = true;
  };
}
