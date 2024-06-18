{ pkgs, ... }:
{
  enable = true;

  settings = {
    drawbox = true;
    hidden = true;
    icons = true;
    ignorecase = true;
    preview = true;
    relativenumber = true;
    tabstop = 2;

    ratios = [
      1
      1
    ];

  };

  keybindings = {
    U = "!du -sh";
    cd = "cd";
    d = null;
    dd = "delete";
    i = "$less $f";
  };

  previewer = {
    source = "${pkgs.pistol}/bin/pistol";
  };
}
