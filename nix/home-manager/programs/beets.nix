{ pkgs, ... }:
{

  enable = true;
  package = pkgs.beets;

  settings = {
    plugins = "fetchart embedart convert scrub replaygain lastgenre chroma web";
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
      incremental = "yes";
      quite_fallback = "skip";
      timid = "no";
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

  };

}
