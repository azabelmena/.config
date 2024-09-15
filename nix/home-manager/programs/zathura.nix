{ pkgs, config, ... }:
{
  package = pkgs.zathura;
  enable = true;

  mappings = {
    "[normal] d"        = "scroll half-down";
    "[normal] D"        = "scroll half-up";
    "[normal] r"        = "reload";
    "[normal] i"        = "recolor";
    "[normal] p"        = "print";
    "[normal] Space"    = "navigate next";
  };
 options = {
    guioptions = "none";

    recolor-keephue = true;
    recolor-reverse-video = true;

    page-padding = 1;
    recolor = false;
    selection-clipboard = "clipboard";
    selection-notification = false;
  };
}
