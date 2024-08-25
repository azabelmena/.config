{ pkgs, config, ... }:
let
  conf = "${config.home.homeDirectory}/.config/swaylock/config";
in
{
  package = pkgs.swayidle;
  enable = true;

  timeouts = [
    { timeout = 180; command = "${pkgs.swaylock-effects}/bin/swaylock --config ${conf} -f"; }
  ];

}
