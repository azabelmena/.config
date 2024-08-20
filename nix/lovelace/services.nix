{ pkgs, ... }:
{
  openssh = {
    enable = true;

    settings = {
      UseDns = true;
      PasswordAuthentication = false;
      PermitRootLogin = "no";
    };

  };

  avahi = {
  enable = true;
  nssmdns = true;
  openFirewall = true;
  };
}
