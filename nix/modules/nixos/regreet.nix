{ pkgs, lib, ... }:
{

  enable = true;
  package = pkgs.greetd.regreet;

  theme = {
    name = lib.mkForce "Canta-dark";
    package = lib.mkForce pkgs.canta-theme;
  };

}
