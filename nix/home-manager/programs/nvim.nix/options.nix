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

  colorcolumn = "70";
  cursorcolumn = true;
  cursorline = true;

  conceallevel = 1;

  backup = false;
  textwidth = 70;
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
