{ pkgs, config, ... }:
{

  package = pkgs.mako;

  enable = true;
  actions = true;

  defaultTimeout = 5000;
  sort = "+time";
  maxVisible = 10;

  icons = true;

  anchor = "top-right";
  layer = "overlay";
  margin = "10,,10,";

  padding = "5,5,5,5";

  borderRadius = 0;
  borderSize = 3;

  width = 200;
  height = 100;

}
