{ pkgs, ... }:
{

  enable = true;
  package = pkgs.vimPlugins.vim-floaterm;

  settings = {
    autoclose = 2;
    autohide = 0;
    autoinsert = true;

    wintype = "split";
    position = "botright";

    height = 0.5;
    width = 0.5;

    shell = "zsh";

    keymap_toggle = "<leader>tt";
    keymap_new = "<leader>tn";
    keymap_kill = "<leader>tk";

    keymap_prev = "<leader>th";
    keymap_last = "<leader>tj";
    keymap_first = "<leader>tk";
    keymap_next = "<leader>tl";

  };

}
