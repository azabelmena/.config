[

  {
    key = "<Tab>";
    action = ":Ex!<CR>";
  }
  {
    key = "<C-s>";
    action = ":Sex!<CR>";
  }
  {
    key = "<C-b>";
    action = ":Sex?<CR>";
  }

  {
    key = "J";
    action = "<C-d>zz";
    mode = [ "n" "v" ];
  }
  {
    key = "K";
    action = "<C-u>zz";
    mode = [ "n" "v" ];
  }

  {
    key = "<C-h>";
    action = "<C-w>h";
    mode = [ "n" "i" "v" ];
  }
  {
    key = "<C-j>";
    action = "<C-w>j";
    mode = [ "n" "i" "v" ];
  }
  {
    key = "<C-k>";
    action = "<C-w>k";
    mode = [ "n" "i" "v" ];
  }
  {
    key = "<C-l>";
    action = "<C-w>l";
    mode = [ "n" "i" "v" ];
  }

  {
    key = "$";
    action = "g$";
  }
  {
    key = "j";
    action = "gj";
  }
  {
    key = "k";
    action = "gk";
  }
  {
    key = "0";
    action = "g0";
  }

  {
    key = "<C-]>";
    action = ":bnext<CR>";
  }
  {
    key = "<C-[>";
    action = ":bprev<CR>";
  }
  {
    key = "<C-q>";
    action = ":bdelete<CR>";
  }

  {
      key = "<leader>ss";
      action = ":setlocal spell!<CR>";
  }
  {
      key = "<leader>sn";
      action = "]s";
  }
  {
      key = "<leader>sp";
      action = "[s";
  }
  {
      key = "<leader>sa";
      action = "zg";
  }
  {
      key = "<leader>s?";
      action = "z=";
  }

  {
      key = "n";
      action = "nzz";
  }
  {
    key = "N";
    action = "Nzz";
  }

  {
    key = "<C-C>";
    action = ":noh<CR>";
    mode = [ "n" "i" "v" ];
  }

  {
    key = "<ESC>";
    action = "<ESC>";
    mode = [ "n" "i" "v" ];
  }
  {
    key = "<ESC>";
    action = "<C-\\><C-n>";
    mode = [ "t" ];
  }
  {
    key = "<Bksp>";
    action = "<Bksp>";
    mode = [ "n" "i" "v" ];
  }
  {
    key = "<Up>";
    action = "<Nop>";
    mode = [ "n" "i" "v" ];
  }
  {
    key = "<Left>";
    action = "<Nop>";
    mode = [ "n" "i" "v" ];
  }
  {
    key = "<Right>";
    action = "<Nop>";
    mode = [ "n" "i" "v" ];
  }
  {
    key = "<Down>";
    action = "<Nop>";
    mode = [ "n" "i" "v" ];
  }
  {
    key = "<PageUp>";
    action = "<Nop>";
    mode = [ "n" "i" "v" ];
  }
  {
    key = "<PageDown>";
    action = "<Nop>";
    mode = [ "n" "i" "v" ];
  }
  {
    key = "ZZ";
    action = "<Nop>";
    mode = [ "n" "v" ];
  }

]
