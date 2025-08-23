{ pkgs, config, ... }:

let
  home = config.home.homeDirectory;
in
{

  enable = true;

  mime.enable = true;
  mimeApps = {
    enable = true;

    defaultApplications = {
      "application/pdf" = "org.pwmt.zathura.desktop";
    };
  };

  cacheHome = "${home}/.cache/";
  configHome = "${home}/.config/";
  dataHome = "${home}/.local/share/";
  stateHome = "${home}/.local/state/";

  userDirs = {
    enable = true;
    createDirectories = true;

    desktop = "${home}/Desktop/";
    documents = "${home}/Documents/";
    download = "${home}/Downloads/";
    pictures = "${home}/Pictures/";
    templates = "${home}/Templates/";

    music = "${home}/Audio/Music/";
    videos = "${home}/Video/";

    extraConfig = {
      XDG_DEVNIX_DIR = "${home}/devnix/";

      XDG_AUDIO_DIR = "${home}/Audio/";
      XDG_AUDIOBOOKS_DIR = "${home}/Audio/Audiobooks/";
      XDG_PODCASTS_DIR = "${home}/Audio/Podcasts/";

      XDG_MOVIES_DIR = "${home}/Video/Movies/";
      XDG_SHOWS_DIR = "${home}/Video/Shows/";

      XDG_GAMES_DIR = "${home}/Games/";

      XDG_MATHEMATICS_DIR = "${home}/mathematics/";
      XDG_MISC_DIR = "${home}/Misc/";
      XDG_MOUNT0_DIR = "${home}/mount/mount0/";
      XDG_MOUNT1_DIR = "${home}/mount/mount1/";
      XDG_MOUNT2_DIR = "${home}/mount/mount2/";
      XDG_MOUNT3_DIR = "${home}/mount/mount3/";
      XDG_MOUNT_DIR = "${home}/mount/";
      XDG_SCREENSHOTS_DIR = "${home}/Pictures/Screenshots/";
      XDG_STORAGE_DIR = "${home}/storage/";
    };
  };
}
