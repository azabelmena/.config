{ pkgs, config, ... }:
{

  "ultisnips" = {
    recursive = true;
    source = config.lib.file.mkOutOfStoreSymlink
    "${config.home.homeDirectory}/.config/home-manager/nvim.nix/UltiSnips";
    target = ".config/nvim/UltiSnips";
  };

  "fastfetch" = {
    recursive = true;
    source = config.lib.file.mkOutOfStoreSymlink
    "${config.home.homeDirectory}/.config/home-manager/fastfetch.nix/config.jsonc";
    target = ".config/fastfetch/config.jsonc";
  };

  "vifm" = {
    recursive = true;
    source = config.lib.file.mkOutOfStoreSymlink
    "${config.home.homeDirectory}/.config/home-manager/vifm.nix/vifmrc";
    target = ".config/vifm/vifmrc";
  };
}
