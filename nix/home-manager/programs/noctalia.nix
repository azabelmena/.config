{ pkgs, ... }:
{
  enable = true;

  settings = {
    theme = {
      mode = "dark";
      source = "builtin";
      builtin = "Gruvbox";
    };

    wallpaper.enable = false;
  };
}
