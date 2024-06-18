{
  enable = true;
  settings = {
    logo = {
      padding = {
        top = 0;
        right = 0;
        left = 0;
        bottom = 0;
      };
    };
    display = {
      separator = "   ";
    };
    modules = [
      {
        type = "custom";
        format = "┌──────────────────────────────────────────────────────────────────────────┐";
      }
      {
        type = "os";
        key = "󱄅 OS";
        keyColor = "yellow";
      }
      {
        type = "kernel";
        key = "│ ├";
        keyColor = "yellow";
      }
      {
        type = "packages";
        key = "│ ├󰏓";
        keyColor = "yellow";
      }
      {
        type = "shell";
        key = "│ ├";
        keyColor = "yellow";
      }
      {
        type = "terminal";
        key = "│ └";
        keyColor = "yellow";
      }
      {
        type = "custom";
        format = "├──────────────────────────────────────────────────────────────────────────┤";
      }
      {
        type = "host";
        key = "󰇅 PC";
        keyColor = "green";
      }
      {
        type = "cpu";
        key = "│ ├󰻠";
        keyColor = "green";
      }
      {
        type = "gpu";
        key = "│ ├";
        keyColor = "green";
      }
      {
        type = "disk";
        key = "│ ├󰋊";
        keyColor = "green";
      }
      {
        type = "memory";
        key = "│ ├";
        keyColor = "green";
      }
      {
        type = "swap";
        key = "│ ├󰓡";
        keyColor = "green";
      }
      {
        type = "uptime";
        key = "│ ├󰅐";
        keyColor = "green";
      }
      {
        type = "display";
        key = "│ └󰍹";
        keyColor = "green";
      }
      {
        type = "custom";
        format = "├──────────────────────────────────────────────────────────────────────────┤";
      }
      {
        type = "sound";
        key = " SND";
        keyColor = "cyan";
      }
      {
        type = "player";
        key = "│ └";
        keyColor = "cyan";
      }
      {
        type = "media";
        key = "│ └";
        keyColor = "cyan";
      }
      {
        type = "custom";
        format = "└──────────────────────────────────────────────────────────────────────────┘";
      }
    ];
  };
}
