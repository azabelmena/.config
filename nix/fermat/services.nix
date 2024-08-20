{ pkgs, lib, ... }:
{
  openssh.enable = lib.mkForce false;

  avahi = {
  enable = true;
  nssmdns = true;
  openFirewall = true;
  };
}
