{ pkgs, ... }:
{
  enable = true;

  settings = {

    general = {
      autostart = [
        "noctalia"
      ];

      nvidia_sync_workaround = true;

      show_cheatsheet = false;
    };

    layout = {
      mode = "dwindle";
      gap = 5;
    };

    appearance = {
      prefer_no_csd = true;
      border_width = 1;
    };

    input = ( import ./input.nix );

    output = ( import ./output.nix );

    keybinds = ( import ./keybinds.nix );
  };

}
