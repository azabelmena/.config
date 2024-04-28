{ config, ... }:
''
* {
border: none;
        border-radius: 0px;
        font-family: JetBrainsMono Nerd Font;
        font-weight: bold;
        font-size: 15px;
        min-height: 0;
}

window#waybar {
background: #${config.colorScheme.palette.base00};
color: #${config.colorScheme.palette.base06};
}

tooltip {
background: #${config.colorScheme.palette.base00};
            border-radius: 10px;
            border-width: 2px;
            border-style: solid;
            border-color: #${config.colorScheme.palette.base00};
}
#workspaces button {
padding: 0 0.4em;
color: #504945;
       border-radius: 6px;
       margin-right: 2px;
       margin-left: 2px;
       margin-top: 2px;
       margin-bottom: 2px;
}

#workspaces button.active {
color: #${config.colorScheme.palette.base06};
background: #${config.colorScheme.palette.base03};
}

#workspaces button.focused {
color: #${config.colorScheme.palette.base06};
background: #${config.colorScheme.palette.base03};
}

#workspaces button.urgent {
color: #${config.colorScheme.palette.base00};
background: #${config.colorScheme.palette.base08};
}

#workspaces button:hover {
color: #${config.colorScheme.palette.base06};
background: #${config.colorScheme.palette.base03};
}

#custom-power,
#date,
#backlight,
#idle_inhibitor,
#pulseaudio,
#network,
#workspaces,
#temperature,
#clock,
#battery {
background: #${config.colorScheme.palette.base00};
padding: 0 0.5em;
         margin-right: 4px;
         margin-left: 4px;
         margin-top: 4px;
         margin-bottom: 4px;
         border-radius: 6px;
}

#tray {
  margin-right: 6px;
}

#network {
color: #${config.colorScheme.palette.base06};
       margin-right: 6px;
}

#pulseaudio {
  margin-right: 6px;
color: #${config.colorScheme.palette.base06};
}

#custom-power {
color: #${config.colorScheme.palette.base08};
background: #${config.colorScheme.palette.base00};
}

#clock {
color: #${config.colorScheme.palette.base06};
       margin-right: 6px;
}

@keyframes gradient {
  0% {
    background-position: 0% 50%;
  }

  50% {
    background-position: 100% 30%;
  }

  100% {
    background-position: 0% 50%;
  }
}

@keyframes gradient_f {
  0% {
    background-position: 0% 200%;
  }

  50% {
    background-position: 200% 0%;
  }

  100% {
    background-position: 400% 200%;
  }
}

@keyframes gradient_f_nh {
  0% {
    background-position: 0% 200%;
  }

  100% {
    background-position: 200% 200%;
  }
}
''
