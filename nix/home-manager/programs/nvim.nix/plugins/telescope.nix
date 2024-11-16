{ pkgs, ... }:
{

  enable = true;

  package = pkgs.vimPlugins.telescope-nvim;
  batPackage = pkgs.bat;

  highlightTheme = "gruvbox";

  settings = {
    pickers ={
      find_files = {
        hidden = true;
      };

      man_pages = {
        sections = [ "ALL" ];
        man_cmd = [ "apropos" ".*" ];
      };
    };
  };

  keymaps = {
    "<leader>ff" = {
      action = "find_files";
      options = {
        desc = "Files";
      };
    };
    "<leader>fr" = {
      action = "oldfiles";
      options = {
        desc = "Recent Files";
      };
    };
    "<leader>fs" = {
      action = "live_grep";
      options = {
        desc = "Live Grep";
      };
    };
    "<leader>fc" = {
      action = "grep_string";
      options = {
        desc = "Strings Under Cursor";
      };
    };
    "<leader>fh" = {
      action = "help_tags";
      options = {
        desc = "Help Tags";
      };
    };
    "<leader>fb" = {
      action = "buffers";
      options = {
        desc = "Buffers";
      };
    };
  };

}
