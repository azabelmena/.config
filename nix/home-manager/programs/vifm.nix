{ pkgs, ... }:
{
  enable = true;
  package = pkgs.vifm-full;

  extraConfig = ''
    set vicmd=vi
    set syscalls
    set notrash
    set history=100
    set nofollowlinks
    set sortnumbers
    set relativenumber
    set undolevels=100
    set vimhelp
    set timefmt=%H.%M%.%s:%d.%m.%y
    set wildmenu
    set wildstyle=popup
    set suggestoptions=normal,visual,view,otherpane,keys,marks,registers
    set ignorecase
    set smartcase
    set nohlsearch
    set incsearch
    set scrolloff=4

    if !has('win')
      set slowfs=curlftpfs
    endif

    set statusline="  Hint: %z%= %A %10u:%-7g %15s %20d  "

    mark b ~/bin/
    mark h ~/

    command! df df -h %m 2> /dev/null
    command! diff vim -d %f %F
    command! zip zip -r %c.zip %f
    command! run !! ./%f
    command! make !!make %a
    command! mkcd :mkdir %a | cd %a
    command! vgrep vim "+grep %a"
    command! reload :write | restart full

    filextype {*.pdf},<application/pdf> zathura %c %i &, apvlv %c, xpdf %c
    fileviewer {*.pdf},<application/pdf> pdftotext -nopgbrk %c -

    filextype {*.ps,*.eps,*.ps.gz},<application/postscript> {View in zathura} zathura %f,

    filetype {*.o},<application/x-object> objdump | ${pkgs.bat}/bin/bat --theme gruvbox-dark

    nnoremap s :shell<cr>
    nnoremap S :sort<cr>
    nnoremap w :view<cr>
    vnoremap w :view<cr>gv
    nnoremap o :!vim
    nnoremap gb :file &<cr>l
  '';
}
