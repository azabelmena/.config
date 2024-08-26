{ pkgs, config, ... }:
{
  "ultisnips" = {
    recursive = true;
    source = config.lib.file.mkOutOfStoreSymlink
    "${config.home.homeDirectory}/.config/nix/home-manager/programs/nvim.nix/UltiSnips";
    target = "${config.home.homeDirectory}/.config/nvim/UltiSnips";
  };

  "aerospace" = {
    recursive = true;
    source = config.lib.file.mkOutOfStoreSymlink
    "${config.home.homeDirectory}/.config/nix/home-manager/programs/aerospace.toml";
    target = "${config.home.homeDirectory}/.config/aerospace/aerospace.toml";
  };
}
