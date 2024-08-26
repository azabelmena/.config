{ pkgs, config, lib, ... }:
{

  username = "alec";
  homeDirectory = "/Users/alec";

  stateVersion = "24.05";

  sessionVariables = {
    EDITOR = "nvim";
    XDG_CONFIG_HOME = ".config";
  };

  packages = with pkgs; [
    (nerdfonts.override { fonts = ["IBMPlexMono"]; })
  ];


  file = ( import ../../../modules/nix-darwin/misc/files.nix { inherit pkgs config lib; });


}
