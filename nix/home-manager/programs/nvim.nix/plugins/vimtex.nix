{ pkgs, ... }:
{
  enable = true;
  package = pkgs.vimPlugins.vimtex;
  texlivePackage = pkgs.texlive.combined.scheme-full;

  settings = {
    cache_persistent = 0;
    compiler_method = "latexmk";
    compiler_silent = false;
    compiler_clean_paths = [
      "*.aux"
      "*.fdb_latexmk"
      "*.log"
      "*.pdf"
      "*.bbl"
      "*.fls"
      "*.out"
      "*.synctex.gz"
      "*.toc"
    ];
    compiler_latexmk_engines = {
        _ = "-lualatex";
    };

    parser_bib_backed = "bibtex";

    log_verbose = 1;

    quickfix_enabled = 0;
    quickfix_mode = 0;
    quickfix_open_on_warning = 0;

    syntax_conceal = {
      accents =  1;
      ligatures =  1;
      cites =  1;
      fancy =  1;
      spacing =  0;
      greek =  1;
      math_bounds =  0;
      math_delimiters =  1;
      math_fracs =  1;
      math_super_sub =  1;
      math_symbols =  1;
      sections =  0;
      styles =  1;
    };
    syntax_conceal_cites = {
      type = "brackets";
      verbose = "v:true";
    };

    view_method = "zathura";

    fold_enabled = 1;
    fold_bib_enabled = 1;

    doc_enabled = 1;
    doc_confirm_single = 1;
  };
}
