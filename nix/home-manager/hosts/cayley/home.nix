{ pkgs, config, lib, ... }:
{
  username = "alec";
  homeDirectory = "/home/alec";
  stateVersion = "24.05";

  sessionVariables = {
    EDITOR = "nvim";
  };

  sessionPath = [
    "/home/alec/scripts/"
  ];

  packages = with pkgs.nerd-fonts; [
    blex-mono
  ];

  file = ( import ../../../modules/nixos/misc/files.nix { inherit pkgs config lib; });

  enableNixpkgsReleaseCheck = true;
  enableDebugInfo = true;

  keyboard = ( import ./keyboard.nix );

  preferXdgDirectories = true;
}
