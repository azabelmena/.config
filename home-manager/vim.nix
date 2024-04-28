{ pkgs, ...}:
{

    enable = true;

    plugins = with pkgs.vimPlugins; [
      nerdcommenter
      ultisnips
      vim-airline
      vim-airline-themes
      vim-gruvbox8
      vim-nix
      vimtex
    ];

    extraConfig = ''
      set nocompatible
      set nopaste
      set pastetoggle=<F10>
      set history=500
      set relativenumber
      set splitbelow
      set cursorline
      set cursorcolumn
      set nobackup
      set nowb
      set noswapfile
      set undodir=/home/alec/.vim/undodir
      set undofile
      set autoread
      set so=7
      set path+=**
      set wildmenu
      set ruler
      set cmdheight=1
      set hid
      set backspace=eol,start,indent
      set whichwrap+=<,>,h,l
      set ignorecase
      set smartcase
      set hlsearch
      set incsearch
      set lazyredraw
      set showmatch
      set mat=2
      set noerrorbells
      set novisualbell
      set t_vb=
      set tm=500
      set background=dark
      set encoding=utf8
      set fileformats=unix
      set expandtab
      set smarttab
      set shiftwidth=4
      set tabstop=4
      set autoindent
      set smartindent
      set linebreak
      set textwidth=80
      set nowrap
      set nolist
      set formatoptions+=t
      set colorcolumn=81


      let &t_SI = "\<esc>[6 q"
      let &t_SR = "\<esc>[4 q"
      let &t_EI = "\<esc>[2 q"

      " Enable filetype plugins
      filetype plugin on
      filetype indent on

      au FocusGained,BufEnter * checktime

      let mapleader = ","

      command C let @/=""

      syntax enable

      colorscheme gruvbox8_soft

      let g:netrw_banner = 0
      let g:netrw_browssplit = 0
      let g:netrw_liststyle = 1
      let g:netrw_bufsettings = 'noma nomod nonu nowrap ro nobl'

      let g:NetrwIsOpen=0

      function! ToggleNetrw()
          if g:NetrwIsOpen
              let i = bufnr("$")
              while (i >= 1)
                  if (getbufvar(i, "&filetype") == "netrw")
                      silent exe "bwipeout " . i
                  endif
                  let i-=1
              endwhile
              let g:NetrwIsOpen=0
          else
              let g:NetrwIsOpen=1
              silent Ex!
          endif
      endfunction

      function! ToggleSex()
          if g:NetrwIsOpen
              let i = bufnr("$")
              while (i >= 1)
                  if (getbufvar(i, "&filetype") == "netrw")
                      silent exe "bwipeout " . i
                  endif
                  let i-=1
              endwhile
              let g:NetrwIsOpen=0
          else
              let g:NetrwIsOpen=1
              silent Sex!
          endif
      endfunction

      function! ToggleSex2()
          if g:NetrwIsOpen
              let i = bufnr("$")
              while (i >= 1)
                  if (getbufvar(i, "&filetype") == "netrw")
                      silent exe "bwipeout " . i
                  endif
                  let i-=1
              endwhile
              let g:NetrwIsOpen=0
          else
              let g:NetrwIsOpen=1
              silent Sex?
          endif
      endfunction

      noremap <silent> <C-N> :call ToggleNetrw()<CR>
      noremap <silent> <C-S> :call ToggleSex()<CR>
      noremap <silent> <C-B> :call ToggleSex2()<CR>
      nnoremap <C-]> :bnext<CR>
      nnoremap <C-[> :bprevious<CR>
      nnoremap <C-p> :bdelete<CR>

      let g:airline_experimental = 1
      let g:airline_theme='base16_gruvbox_dark_hard'

      let g:tex_flavor='latex'
      let g:vimtex_parser_bib_backend='bibtex'
      let g:vimtex_view_automatic = 0
      let g:vimtex_view_general_viewer='zathura'
      let g:vimtex_quickfix_mode=0
      set conceallevel=1
      let g:tex_conceal='abdmg'

      autocmd BufRead, BufNewFile *.tex set filetype=tex
      autocmd BufRead, BufNewFile *.cu set filetype=cuda

      autocmd BufWritePre * %s/\s\+$//e

      autocmd bufreadpre *.csv setlocal nowrap nolinebreak textwidth=0
      autocmd bufreadpre *.c setlocal nowrap nolinebreak textwidth=0

      vnoremap <silent> * :<C-u>call VisualSelection(\'\', \'\')<CR>/<C-R>=@/<CR><CR>
      vnoremap <silent> # :<C-u>call VisualSelection(\'\', \'\')<CR>?<C-R>=@/<CR><CR>

      map j gj
      map k gk
      map $ g$
      map 0 g0

      map <C-h> <C-W>h
      map <C-j> <C-W>j
      map <C-k> <C-W>k
      map <C-l> <C-W>l

      map <leader>h :bright<cr>
      map <leader>j :bup<cr>
      map <leader>k :bdown<cr>
      map <leader>l :bleft<cr>

      try
        set switchbuf=useopen,usetab,newtab
        set stal=2
      catch
      endtry

      au BufReadPost * if line("\'\"") > 1 && line("\'\"") <= line("$") | exe "normal! g\'\"" | endif

      set laststatus=2

      set statusline=\ %F%m%r%h\ %w\ \ PWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

      fun! CleanExtraSpaces()
          let save_cursor = getpos(".")
          let old_query = getreg(\'/\')
          silent! %s/\s\+$//e
          call setpos(\'.\', save_cursor)
          call setreg(\'/\', old_query)
      endfun

      if has("autocmd")
          autocmd BufWritePre *.*:call CleanExtraSpaces()
      endif


      set nospell
      set spelllang=en_us

      highlight SpellBad    ctermfg=160      ctermbg=000     cterm=none

      autocmd Filetype tex setlocal spell spelllang=en_us

      map <leader>ss :setlocal spell!<cr>
      map <leader>sn ]s
      map <leader>sp [s
      map <leader>sa zg
      map <leader>s? z=

      noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>\'tzt\'m
      noremap J     <C-d>zz
      noremap K     <C-u>zz
      noremap n nzz
      noremap N Nzz

      nnoremap <Up>       <Nop>
      nnoremap <Left>     <Nop>
      nnoremap <Right>    <Nop>
      nnoremap <Down>     <Nop>
      nnoremap <Down>     <Nop>
      nnoremap <PageUp>   <Nop>
      nnoremap <PageDown> <Nop>

      inoremap <Up>       <Nop>
      inoremap <Left>     <Nop>
      inoremap <Right>    <Nop>
      inoremap <Down>     <Nop>
      inoremap <Down>     <Nop>

      vnoremap <Up> <Nop>
      vnoremap <Left> <Nop>
      vnoremap <Right> <Nop>
      vnoremap <Down> <Nop>
      vnoremap <Down> <Nop>
      vnoremap <PageUp> <Nop>
      vnoremap <PageDown> <Nop>
    '';
}
