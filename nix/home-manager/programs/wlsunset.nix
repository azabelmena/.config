{ pkgs, ... }:
{

  package = pkgs.wlsunset;
  enable = true;

  latitude = "18.44";
  longitude = "66.03";

  sunrise = "06:00";
  sunset = "18:30";

  gamma = "1.0";
  systemdTarget = "graphical-session.target";

}
