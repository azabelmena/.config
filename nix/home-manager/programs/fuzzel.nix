{ pkgs, lib, ... }:
{

  enable = true;
  package = pkgs.fuzzel;

  settings = {
    main = {
      terminal = "${pkgs.foot}/bin/foot";
      layer = "overlay";

      dpi-aware = lib.mkDefault "yes";

      anchor = "center";

      icon-theme = "Papirus";
      icons-enabled = "yes";

      prompt = " \"> \"";
      password-character = "*";
      fuzzy = "yes";

      exit-on-keyboard-focus-loss = "yes";
    };
  };

}
