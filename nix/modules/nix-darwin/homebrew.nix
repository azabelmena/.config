{ config, ... }:
let
HOME = config.users.users.alec.home;
DIR = "${HOME}/Applications";
in
{
  enable = true;

  casks = [
    "nikitabobko/tap/aerospace"
    "qutebrowser"
  ];

  caskArgs = {
    appdir = "${HOME}/Applications";
    require_sha = true;
  };
}
