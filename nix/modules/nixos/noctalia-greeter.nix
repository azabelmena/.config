{ pkgs, ... }:
{
  enable = true;

  greeter-args = "";
  settings= {
    cursor = {
      theme = "GoogleDot-Black";
      package = pkgs.google-cursor;
      size = 24;
    };

    output = {
      scale = 1;
    };

    appearance = {
      scheme = "Synced";
      password_style = "random";
    };
  };
}
