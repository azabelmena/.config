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
    "tailscale"
  ];

  masApps = {
    "Goodnotes 6" = 1444383602;
    "Microsoft Outlook" = 985367838;
    "Microsoft Word" = 462054704;
    "WhatsApp Messenger" = 310633997;
  };

  caskArgs = {
    appdir = "${HOME}/Applications";
    require_sha = true;
  };
}
