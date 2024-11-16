{
  floaterm = ( import ./plugins/floaterm.nix { inherit pkgs; } );
  lualine = ( import ./plugins/lualine.nix { inherit pkgs; } );
  telescope = ( import ./plugins/telescope.nix { inherit pkgs; } );
  treesitter = ( import ./plugins/treesitter.nix { inherit pkgs; } );
  web-devicons = ( import ./plugins/devicons.nix { inherit pkgs; } )
}
