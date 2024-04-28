{ pkgs, config, lib, ... }:

let
  inherit (config.lib.formats.rasi) mkLiteral;
in
{
  "*" = {
    lines = mkLiteral "15";
    columns = mkLiteral "1";

    highlight = mkLiteral "bold italic";

    background-color = mkLiteral "#${config.colorScheme.palette.base00}";
    foreground-color = mkLiteral "#${config.colorScheme.palette.base06}";
    border-color = mkLiteral "#${config.colorScheme.palette.base05}";
    seperator-color = mkLiteral "#${config.colorScheme.palette.base05}";
    scrollbar = mkLiteral "#${config.colorScheme.palette.base02}";
    selected-color = mkLiteral "#${config.colorScheme.palette.base09}";
  };
  "window" = {
    background-color = mkLiteral "@background-color";
    border = 2;
    padding = 2;
    children = map mkLiteral[ "mainbox" ] ;
  };
  "mainbox" = {
    border =  0;
    padding = 0;
    children = map mkLiteral[ "inputbar" "message" "listview" ] ;
  };
  "message" = {
    border = mkLiteral "2px 0 0";
    border-color = mkLiteral "@seperator-color";
    padding = mkLiteral "1px";
  };
  "textbox" = {
    text-color = mkLiteral "@foreground-color";
  };
  "listview" = {
    background-color = mkLiteral "@background-color";
    border = mkLiteral "2px solid 0 0";
    padding = mkLiteral "2px 0 0";
    border-color = mkLiteral "@seperator-color";
    spacing = mkLiteral "2px";
    scrollbar = mkLiteral "@scrollbar";
  };
  "element" = {
    border =  0;
    padding = mkLiteral "2px";
  };
  "element selected" = {
    background-color = mkLiteral "@selected-color";
    text-color = mkLiteral "@foreground-color";
  };
  "element-text" = {
    background-color = mkLiteral "@background-color";
    text-color = mkLiteral "@foreground-color";
  };
  "element-icon" = {
    background-color = mkLiteral "@background-color";
  };
  "element-text selected" = {
    background-color = mkLiteral "@selected-color";
    text-color = mkLiteral "@background-color";
  };
  "element-icon selected" = {
    background-color = mkLiteral "@selected-color";
  };
  "scrollbar" = {
    width = mkLiteral "4px";
    border = 0;
    handle-color = mkLiteral "#${config.colorScheme.palette.base06}";
    handle-width = mkLiteral "8px";
    padding = 0;
  };
  "sidebar" = {
    border = mkLiteral "2px 0 0";
    border-color = mkLiteral "@seperator-color";
  };
  "inputbar" = {
    spacing = 0;
    text-color = mkLiteral "@foreground-color";
    padding = mkLiteral "2px";
    children = map mkLiteral[ "prompt" "textbox-prompt-sep" "entry" "case-indicator" ] ;
  };
  "case-indicator" = {
    spacing = 0;
    text-color = mkLiteral "@foreground-color";
  };
  "entry" = {
    spacing = 0;
    text-color = mkLiteral "@foreground-color";
  };
  "prompt" = {
    spacing = 0;
    text-color = mkLiteral "@foreground-color";
  };
  "button" = {
    spacing = 0;
    text-color = mkLiteral "@foreground-color";
  };
  "button selected" = {
    background-color = mkLiteral "@background-color";
    text-color = mkLiteral "@foreground-color";
  };
  "textbox-prompt-sep" = {
    expand = false;
    str = ">";
    text-color = mkLiteral "@foreground-color";
    margin = mkLiteral "0 0.3em 0 0";
  };
}
