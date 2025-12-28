{ pkgs, ... }:
{
  package = pkgs.git;

  enable = true;

  signing = {
    key = "~/.ssh/sig_github";
    signByDefault = true;
  };

  settings = {
    user.name = "Alec S. Zabel-Mena";
    user.email = "alec.zabel@upr.edu";
    init.defaultBranch = "main";
    commit.gpgsign = true;
    gpg.format = "ssh";
  };

}
