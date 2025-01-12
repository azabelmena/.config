{ pkgs, config, ... }:
let
  home = config.home.homeDirectory;
in
{
  enable = true;
  package = pkgs.vimPlugins.luasnip;

  autoLoad = true;

  fromSnipmate = [
    {
      paths = "${home}/.config/nvim/snippets";
      include = [
        "tex"
      ];
    }
  ];

}
