{ pkgs, ... }:
{
  enable = true;
  package = pkgs.vimPlugins.vimtex;
  texlivePackage = pkgs.texlive.combined.scheme-full;

  settings = {
    compiler_method = "latexmk";
    compiler_silent = false;
    compiler_clean_paths = [
      ".aux"
      ".fdb_latexmk"
      ".log"
      ".pdf"
      ".bbl"
      ".fls"
      ".out"
      ".synctex.gz"
      ".toc"
    ];
    compiler_latexmk_engines = {
        _ = "-lualatex";
    };

    view_method = "zathura";
  };
}
