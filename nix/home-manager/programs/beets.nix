{ pkgs, ... }:
{

  enable = true;
  package = pkgs.beets;

  settings = {
    plugins = "edit fetchart embedart convert scrub replaygain lastgenre chroma web smartplaylist";

    directory = "~/Audio/Music";
    library = "~/Audio/Music/musiclibrary.db";
    art_filename = "albumart";
    threaded = "yes";
    original_date = "yes";
    per_disc_numbering = "no";

    import = {
      write = true;
      copy = true;
      move = false;
      resume = "ask";
      incremental = true;
      timid = false;
      log = "~/.config/beets/beets.log";
    };

    lastgenre = {
      auto = "yes";
      source = "album";
    };

    embedart = {
      auto = true;
    };

    fetchart = {
      auto = true;
      cover_format = "JPEG";
    };

    smartplaylist = {
      relative_to = "~/Audio/Music";
      playlist_dir = "~/.local/share/navidrome";
      forward_slash = false;

      playlists = [
        {
          name = "literally everythin!.m3u";
          query = "";
        }
      ];
    };

  };

}
