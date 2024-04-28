{ pkgs, ... }:
{
  openssh = {
    enable = false;

    settings = {
      UseDns = false;
      PasswordAuthentication = false;
      PermitRootLogin = "no";
      GatewayPorts = "no";
    };

    ports = [
      22
      4096
    ];

  };

  avahi = {

  enable = true;
  nssmdns4 = true;
  openFirewall = true;
  };

  acpid = {
    enable = true;
    logEvents = false;
  };

  xserver = {
    enable = true;
    layout = "us";
    videoDrivers = [""];
    displayManager = {
      sddm = {
        enable = true;
        theme = "${import ./sddm.nix { inherit pkgs; }}";
        autoNumlock = false;
      };
    };
  };

  blueman.enable = false;

  pipewire = {
    enable = true;
    audio.enable = true;

    alsa = {
      enable = true;
      support32Bit = true;
    };

    pulse.enable = true;
    jack.enable = true;
  };

  printing = {
    enable = false;
    startWhenNeeded = false;
    stateless = true;
    tempDir = "/tmp/cups";

    allowFrom = [
    ];

    listenAddresses = [
    ];

    openFirewall = false;
    logLevel = "info";
  };
}
