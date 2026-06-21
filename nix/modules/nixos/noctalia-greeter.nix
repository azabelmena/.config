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
  };
}
