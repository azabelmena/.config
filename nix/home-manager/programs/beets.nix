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
      auto = true;
      output = "m3u";
      relative_to = "~/Audio/Music";
      playlist_dir = "~/Audio/Music";
      forward_slash = false;

      playlists = [
        {
          name = "GuerrillaBOP.m3u";
          query = [
            "artist:Bambu, Víctor Jara, Violeta Parra, Quilapayún"
            "artist:Inti‐Illimani, dead prez"
            "title: The Communists Have The Music"
          ];
        }
        {
          name = "MalandragemBOP.m3u";
          query = [
            "artist:Capoeira Cordão De Ouro, DJ Capoeira , Formiga Capoeira"
            "artist:James Berimbau, Joao Grilo, Levadas, M. Xuê, Mestre Capu"
            "artist:Mestre Coreba"
          ];
        }
        {
          name = "Punk, Rock, & Alt.m3u";
          query = [
            "artist:Adrianne Lenker, Alexandra Savior, Bad Religion"
            "artist:The Bangles, The Black Keys, Black Sabbath, Cage The Elephant"
            "artist:CAKE, Corre Forrest!, Crashprez, El Cuarteto de Nos"
            "artist:Dead Kennedys, The Dresden Dolls, Franz Ferdinand"
            "artist:George Clanton, Hey Theresa, Holy Fuck, Hozier, Jordana"
            "artist:King Gizzard & the Lizard Wizard, Led Zeppelin, LVL1"
            "artist:Madison Acid, Magic de Spell, Manu Chao, Mariana Froes"
            "artist:Metallica, Milky, Misa ’E Gallo, Plini, Purple Mountains"
            "artist:Sam Gellaitry, Santana, Shinsei Kamattechan, Sidney Gish"
            "artist:Sorority Noise, Sports, St. Vincent, Tame Impala"
            "artist:They Might Be Giants, Trinix, Trotsky Icepick, TV Girl"
            "artist:Twenty One Pilots, Ween, Weezer, The White Stripes, The Who"
            "artist:Yes, Zoe Ko, ΑΝΤΙ…, 高橋洋子"
            "artist: Dahlak Band, ጌታቸው፡መኩሪያ, Hailu Mergia"

            "album: Habibi Funk: An Eclectic Selection of Music From the Arab World"

            "title:One More Cup of Coffee"
            "title:21st Century Schizoid Man (including Mirrors)"
            "title:The Court of the Crimson King (including The Return of the Fire Witch and The Dance of the Puppets)"
            "Melissa, THE DAY"
            ];
        }
        {
          name = "HipBOP.m3u";
          query = [
            "artist:A$AP Rocky, Aesop Rock, Bambu, Binary Star"
            "artist: Crashprez, GZA/Genius, Kendrick Lamar, MF DOOM"
            "artist:OutKast, Misa ’E Gallo, Run The Jewels, RZA, Snoop Dogg"
            "artist:A Tribe Called Quest, Wu‐Tang Clan"

            "title:Children’s Story"
          ];
        }

        {
          name = "JazzBOP.m3u";
          query = [
            "artist: Dahlak Band, ጌታቸው፡መኩሪያ, Hailu Mergia, Santana"

            "album: Habibi Funk: An Eclectic Selection of Music From the Arab World"
            "album: Blues Down Deep: Songs of Janis Joplin"
          ];
        }
      ];
    };

  };

}
