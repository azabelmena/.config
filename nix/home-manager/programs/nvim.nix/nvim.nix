{ pkgs, config, ... }:
{
  enable = true;

  defaultEditor = true;

  viAlias = true;
  vimAlias = true;

  luaLoader.enable = true;

  opts = ( import ./options.nix { inherit config; } );

  globals = ( import ./globals.nix { inherit config; } );

  autoCmd = ( import ./autocmd.nix );

  keymaps = ( import ./keymaps.nix );

  plugins = ( import ./plugins.nix { inherit pkgs; } );
  extraPlugins = with pkgs.vimPlugins; [
    nerdcommenter
    ultisnips
    #vimtex
  ];

  enableMan = true;

}
