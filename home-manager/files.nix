{ pkgs, config, ... }:
{
  "ultisnips" = {
    recursive = true;
    source = config.lib.file.mkOutOfStoreSymlink
    "${config.home.homeDirectory}/.config/home-manager/nvim.nix/UltiSnips";
    target = ".config/nvim/UltiSnips";
  };
}
