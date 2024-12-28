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

}
