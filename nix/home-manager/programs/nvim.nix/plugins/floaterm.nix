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

    keymaps_toggle = "<leader>tt";
    keymaps_new = "<leader>tn";
    keymaps_kill = "<leader>tk";

    keymaps_prev = "<leader>th";
    keymaps_last = "<leader>tj";
    keymaps_first = "<leader>tk";
    keymaps_next = "<leader>tl";

  };

}
