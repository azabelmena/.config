{ config, ... }:
{
  autochdir = false;
  expandtab = true;
  nu = false;
  relativenumber = true;
  shiftwidth = 2;
  showmode = false;
  smartindent = true;
  softtabstop = 2;
  tabstop = 2;

  colorcolumn = "0";
  cursorcolumn = false;
  cursorline = true;

  conceallevel = 1;

  backup = false;
  textwidth = 80;
  undodir = "${config.home.homeDirectory}/.vim/undodir";
  undofile = true;
  wrap = false;

  completeopt = "menuone,noselect";

  hlsearch = true;
  incsearch = true;

  termguicolors = true;

  scrolloff = 8;
  signcolumn = "yes";

  updatetime = 50;
}
