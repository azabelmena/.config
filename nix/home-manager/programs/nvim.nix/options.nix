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

  textwidth = 70;
  wrap = true;
  linebreak = true;

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
