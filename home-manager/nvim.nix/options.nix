{ config, ... }:
{
  nu = false;
  relativenumber = true;
  showmode = false;
  tabstop = 2;
  softtabstop = 2;
  shiftwidth = 2;
  expandtab = true;
  smartindent = true;

  cursorline = true;
  cursorcolumn = true;
  colorcolumn = "81";

  conceallevel = 1;

  wrap = false;
  textwidth = 80;
  backup = false;
  undodir = "${config.home.homeDirectory}/.vim/undodir";
  undofile = true;

  completeopt = "menuone,noselect";

  hlsearch = true;
  incsearch = true;

  termguicolors = true;

  scrolloff = 8;
  signcolumn = "yes";

  updatetime = 50;
}
