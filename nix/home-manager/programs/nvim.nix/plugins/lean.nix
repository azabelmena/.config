{ pkgs, ... }:
{
  enable = true;

  package = pkgs.vimPlugins.lean-nvim;
  leanPackage = pkgs.lean4;

  infoview = {
    autoopen = false;
    height = 10;
    horizontalPosition = "bottom";
  };
}
