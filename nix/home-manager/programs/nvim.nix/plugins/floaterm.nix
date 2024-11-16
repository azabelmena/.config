{ pkgs, ... }:
{

  enable = true;
  package = pkgs.vimPlugins.vim-floaterm;

  autoclose = 2;
  autohide = 0;
  autoinsert = true;

  wintype = "split";
  position = "botright";

  height = 0.5;
  width = 0.5;

  shell = "zsh";

  keymaps = {
    toggle = "<leader>tt";
    new = "<leader>tn";
    kill = "<leader>tk";

    prev = "<leader>th";
    last = "<leader>tj";
    first = "<leader>tk";
    next = "<leader>tl";
  };

}
