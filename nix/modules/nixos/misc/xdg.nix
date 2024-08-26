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
    music = "${home}/Music/";
    pictures = "${home}/Pictures/";
    videos = "${home}/Videos/";
    templates = "${home}/Templates/";

    extraConfig = {
      XDG_MISC_DIR = "${home}/Misc/";
      XDG_SCREENSHOTS_DIR = "${home}/Pictures/Screenshots/";
      XDG_MOUNT_DIR = "${home}/mount/";
      XDG_MOUNT0_DIR = "${home}/mount/mount0/";
      XDG_MOUNT1_DIR = "${home}/mount/mount1/";
      XDG_MOUNT2_DIR = "${home}/mount/mount2/";
      XDG_MOUNT3_DIR = "${home}/mount/mount3/";
    };
  };
}
