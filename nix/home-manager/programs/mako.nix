{ pkgs, config, ... }:
{

  package = pkgs.mako;

  enable = true;

  settings = {

    actions = true;

    default-timeout = 5000;
    sort = "+time";
    max-visible = 10;

    icons = true;

    anchor = "top-right";
    layer = "overlay";
    margin = "10,,10,";

    padding = "5,5,5,5";

    border-radius = 0;
    border-size = 3;

    width = 200;
    height = 100;

  };

}
