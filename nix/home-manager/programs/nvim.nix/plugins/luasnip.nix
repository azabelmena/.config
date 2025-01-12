{ pkgs, config, ... }:
let
home = config.home.homeDirectory;
in
{
  enable = true;
  package = pkgs.vimPlugins.luasnip;

  autoLoad = true;

  settings = {
    enable_autosnippets = true;
    store_selection_keys = "<Tab>";
  };

  fromSnipmate = [
  {
    paths = "${home}/.config/nvim/snippets";
    include = [
      "c"
        "cpp"
        "tex"
    ];
  }
  ];

}
