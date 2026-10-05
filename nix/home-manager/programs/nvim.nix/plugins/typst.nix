{ pkgs, ... }:
{
  enable = true;

  package = pkgs.vimPlugins.typst-vim;

  keymaps = {
    watch = "<leader>lo";
  };
}
