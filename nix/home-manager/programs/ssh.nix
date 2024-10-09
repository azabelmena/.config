{ config, ... }:
let
home = config.home.homeDirectory;
in
{
  enable = true;

  matchBlocks = {
    "github.com" = {
      host = "github.com";
      identitiesOnly = true;
      identityFile = [
        "${home}/.ssh/id_github"
      ];
    };
  };

}
