{ pkgs, config, lib, ... }:
{
  "ultisnips" = {
    recursive = true;
    source = config.lib.file.mkOutOfStoreSymlink
    "${config.home.homeDirectory}/.config/nix/home-manager/programs/nvim.nix/UltiSnips";
    target = "${config.home.homeDirectory}/.config/nvim/UltiSnips";
  };
}
