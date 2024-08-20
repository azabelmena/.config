{ pkgs, ... }:
{
  package = pkgs.git;

  enable = true;

  userName = "Alec S. Zabel-Mena";
  userEmail = "alec.zabel@upr.edu";

  signing = {
    key = "~/.ssh/sig_github";
    signByDefault = true;
  };

  extraConfig = {
    init.defaultBranch = "main";
    commit.gpgsign = true;
    gpg.format = "ssh";
  };

}
