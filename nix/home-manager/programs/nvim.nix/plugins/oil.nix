{ pkgs, ... }:
{

  enable = true;

  package = pkgs.vimPlugins.oil-nvim;

  autoLoad = true;

  settings = {
    open_float = true;
    default_file_explorer = true;

    delete_to_trash = false;
    skip_confirm_for_simple_edits = true;


    autosave_changes = true;

    view_options = {
      show_hidden = true;
    };

    win_options = {
      wrap = false;
      signcolumn = "no";
      cursorcolumn = false;
      foldcolumn = "0";
      spell = false;
      list = false;
      conceallevel = 3;
      concealcursor = "nvic";
    };

    keymaps = {
      "<Tab>" = "actions.close";
    };
  };

}
