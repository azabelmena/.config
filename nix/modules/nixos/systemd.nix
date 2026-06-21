{ pkgs, lib, ... }:
{

  sleep.settings.Sleep = {
    AllowSuspend = true;
    AllowHibernate = true;
    AllowHybridSleep = false;
    AllowSuspendThenHibernate = true;

    HibernateDelaySec = "60m";
    SuspendState = "mem";
  };

  services.navidrome.serviceConfig.ProtectHome = lib.mkForce "read-only";
  services.fprintd = {
    wantedBy = [ "multi-user.target" ];
    serviceConfig.Type = "simple";
  };

}
