{ pkgs, config, ... }:

{

  enable = true;

  cacheHome = "${config.home.homeDirectory}/.cache/";
  configHome = "${config.home.homeDirectory}/.config/";
  dataHome = "${config.home.homeDirectory}/.local/share/";
  stateHome = "${config.home.homeDirectory}/.local/state/";

  userDirs = {
    enable = true;
    createDirectories = true;

    desktop = "${config.home.homeDirectory}/Desktop/";
    documents = "${config.home.homeDirectory}/Documents/";
    download = "${config.home.homeDirectory}/Downloads/";
    music = "${config.home.homeDirectory}/Music/";
    pictures = "${config.home.homeDirectory}/Pictures/";
    videos = "${config.home.homeDirectory}/Videos/";
    templates = "${config.home.homeDirectory}/Templates/";

    extraConfig = {
      XDG_MISC_DIR = "${config.home.homeDirectory}/Misc/";
      XDG_SCREENSHOTS_DIR = "${config.home.homeDirectory}/Pictures/Screenshots/";
      XDG_MOUNT_DIR = "${config.home.homeDirectory}/mount/";
      XDG_MOUNT0_DIR = "${config.home.homeDirectory}/mount/mount0/";
      XDG_MOUNT1_DIR = "${config.home.homeDirectory}/mount/mount1/";
      XDG_MOUNT2_DIR = "${config.home.homeDirectory}/mount/mount2/";
      XDG_MOUNT3_DIR = "${config.home.homeDirectory}/mount/mount3/";
    };
  };
}
