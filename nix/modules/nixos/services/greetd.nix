{ pkgs, ... }:
{
  enable = true;
  package = pkgs.greetd;

  settings = {
    default_session = {
      user = "alec";
      command = "${pkgs.hyprland}/bin/start-hyprland --config ~/.config/hypr/hyprland.conf";
    };
  };
}
