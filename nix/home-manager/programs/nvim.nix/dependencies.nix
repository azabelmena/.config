{ pkgs, ... }:
{

  bat = {
    enable = true;
    package = pkgs.bat;
  };

  lean = {
    enable = true;
    package = pkgs.lean4;
  };

}
