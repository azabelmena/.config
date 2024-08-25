{ pkgs, ... }:
{

  package = pkgs.wlsunset;
  enable = true;

  latitude = "18.44";
  longitude = "66.03";

  gamma = "1.0";
  systemdTarget = "graphical-session.target";

}
