{ pkgs, config, lib, ... }:
let
home = config.home.homeDirectory;
in
{
  "snippets" = {
    recursive = true;
    source = config.lib.file.mkOutOfStoreSymlink
    "${home}/.config/nix/home-manager/programs/nvim.nix/snippets";
    target = "${home}/.config/nvim/snippets";
  };
}
