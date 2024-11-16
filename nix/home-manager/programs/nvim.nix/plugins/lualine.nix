{ pkgs, ... }:
{

  enable = true;
  package = pkgs.vimPlugins.lualine-nvim;

  settings = {
    options = {
      always_divide_middle = true;
      global_status = true;
      icons_enabled = true;

      component_separators = {
        left = "";
        right = "";
      };

      section_separators = {
        left = "";
        right = "";
      };
    };
  };
}
