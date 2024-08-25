{ config, ... }:
{

  mapleader = ",";
  maplocalleader = "\\";

  netrw_banner = 0;
  netrw_browse_split = 0;
  netrw_browse_liststyle = 0;
  netrw_bufsettings = "noma nomod nonu nowrap ro nobl";

  UltiSnipsExpandTrigger = "<Tab>";
  UltiSnipsJumpForwardTrigger = "<C-j>";
  UltiSnipsJumpBackwardTrigger = "<C-k>";
  UltiSnipsSnippetDirectories = [ "${config.home.homeDirectory}/.config/nvim/UltiSnips" ];

  tex_flavor = "latex";
  vimtex_parser_bib_backend = "bibtex";
  vimtex_view_method = "zathura";
  vimtex_quickfix_mode = 0;
  vimtex_syntax_enabled = 0;
  tex_conceal = "abdmg";
}
