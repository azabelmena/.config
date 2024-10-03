{ pkgs, ... }:
{

  sleep.extraConfig = ''
    AllowSuspend=yes
    AllowHibernate=yes
    AllowHybridSleep=no
    AllowSuspendThenHibernate=yes

    HibernateDelaySec=60m
    SuspendState=mem
  '';

  services.fprintd = {
    wantedBy = [ "multi-user.target" ];
    serviceConfig.Type = "simple";
  };

  user.services.polkit-gnome-authentication-agent-1 = {
    description = "polkit-gnome-authentication-agent-1";
    wantedBy = [ "graphical-session.target" ];
    wants = [ "graphical-session.target" ];
    after = [ "graphical-session.target" ];

    serviceConfig = {
      Type = "simple";
      ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
      Restart = "on-failure";
      RestartSec = 1;
      TimeoutStopSec = 10;
    };
  };
}
