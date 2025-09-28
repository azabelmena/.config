{ pkgs, ... }:

{
  package = pkgs.navidrome;
  enable = true;

  user = "alec";

  settings = {
    AutoImportPlaylists = true;
    MusicFolder = "/home/alec/Audio/Music";
    DataFolder = "/home/alec/.local/share/navidrome";
    PlaylistsPath = "/home/alec/.local/share/navidrome/playlists";
    Address = "100.125.95.69";
    Port = 4533;
    Scanner = {
      Enabled = true;
      PurgeMissing = "always";
      ScanOnStartup = true;
      GroupAlbumReleases = true;
    };
    PID = {
      Track = "musicbrainz_trackid|albumid,discnumber,tracknumber,title";
      Album = "musicbrainz_albumid|albumartistid,album";
    };
  };

  openFirewall = true;
}
