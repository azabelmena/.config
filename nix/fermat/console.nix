{ config, ... }:
{
  font = "Lat2-Terminus16";
  keyMap = "us";
  useXkbConfig = true;
  colors = [
    "${config.colorScheme.palette.base00}"
    "${config.colorScheme.palette.base01}"
    "${config.colorScheme.palette.base0B}"
    "${config.colorScheme.palette.base0B}"
    "${config.colorScheme.palette.base0E}"
    "${config.colorScheme.palette.base0F}"
    "${config.colorScheme.palette.base0D}"
    "${config.colorScheme.palette.base0D}"
    "${config.colorScheme.palette.base08}"
    "${config.colorScheme.palette.base08}"
    "${config.colorScheme.palette.base0B}"
    "${config.colorScheme.palette.base0A}"
    "${config.colorScheme.palette.base0C}"
    "${config.colorScheme.palette.base0C}"
    "${config.colorScheme.palette.base06}"
    "${config.colorScheme.palette.base07}"
  ];
}
