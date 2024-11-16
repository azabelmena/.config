{ pkgs, ... }:
{
  enable = true;

  package = pkgs.vimPlugins.lean-nvim;
  leanPackage = pkgs.lean4;

  lsp.enable = false;

  infoview = {
    autoopen = true;
    height = 10;
    horizontalPosition = "bottom";
  };
}
