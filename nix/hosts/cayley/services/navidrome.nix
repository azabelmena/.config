{ pkgs, ... }:

{
  package = pkgs.navidrome;
  enable = true;

  user = "alec";

  settings = {
    TLSCert = "cayley.angora-hammerhead.ts.net.crt";
    TLSKey = "cayley.angora-hammerhead.ts.net.key";
    AutoImportPlaylists = true;
    MusicFolder = "/home/alec/Audio/Music";
    Address = "100.125.95.69";
    Port = 4533;
    Scanner = {
      Enabled = true;
      fullScan = true;
      ScanOnStartup = true;
    };
    PID = {
      Track = "musicbrainz_trackid|albumid,discnumber,tracknumber,title";
      Album = "musicbrainz_albumid|albumartistid,album";
    };
  };

  openFirewall = true;
}
