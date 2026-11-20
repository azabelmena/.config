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

    session = {
      default = "Umbriel";
    };

    user = {
      default = "alec";
    };

    output = {
      layout = [
        "HDMI-A-1:0,0"
        "eDP-1:0,0"
      ];
      scales = [
        "HDMI-A-1:1"
        "eDP-1:1"
      ];
    };

    idle = {
      timeout = 60;
    };

    clock = {
      enabled = true;
      position = "bottom-left";
      time_format = "{:%H:%M:%S}";
      date_format = "%A, %d %B %Y";
      time_font_size = 24;
      date_font_size = 18;
    };

    appearance = {
      scheme = "Synced";
      password_style = "random";
      hide_logo = true;
    };

    auth = {
      allow_empty_password = false;
      request_timeout = 30;
    };

  };
}
