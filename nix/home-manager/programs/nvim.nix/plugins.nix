{ pkgs, config, ... }:
{
  floaterm = ( import ./plugins/floaterm.nix { inherit pkgs; } );
  lean = ( import ./plugins/lean.nix { inherit pkgs; } );
  lualine = ( import ./plugins/lualine.nix { inherit pkgs; } );
  luasnip = ( import ./plugins/luasnip.nix { inherit pkgs config; } );
  telescope = ( import ./plugins/telescope.nix { inherit pkgs; } );
  treesitter = ( import ./plugins/treesitter.nix { inherit pkgs; } );
  web-devicons = ( import ./plugins/devicons.nix { inherit pkgs; } );
  vimtex = ( import ./plugins/vimtex.nix { inherit pkgs; } );
}