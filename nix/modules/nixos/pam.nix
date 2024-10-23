{ pkgs, ... }:
{

  package = pkgs.pam;

  services = {
    login = {
      fprintAuth = true;

      text = ''
        auth include login
        '';

      logFailures = true;
    };

    hyprlock = {
      fprintAuth = true;

      logFailures = true;


    };
  };

}
