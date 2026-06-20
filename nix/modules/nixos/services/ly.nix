{ pkgs, ... }:
{
  enable = true;
  package = pkgs.ly;

  x11Support = true;

  settings = {
    load = false;
    save = false;
  };
}
