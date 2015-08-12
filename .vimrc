execute pathogen#infect()
syntax on
filetype plugin indent on

" javacomplete2
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType java call javacomplete#StartServer()
nnoremap <C-S-O> call javacomplete#AddImport()<cr>
set completeopt=longest,menu

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
	finish 
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup        " do not keep a backup file, use versions instead
set number
set history=500      " keep 50 lines of command line history
set ruler       " show the cursor position all the time
set showcmd     " display incomplete commands
set incsearch       " do incremental searching

" Don't use Ex mode, use Q for formatting
map Q gq

" Switch syntax highlighting on, when the terminal has colors
" " Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
	syntax on
	set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

    " Enable file type detection.
    " Use the default filetype settings, so that mail gets 'tw' set to 72,
    " 'cindent' is on in C files, etc.
    " Also load indent files, to automatically do language-dependent indenting.
    filetype plugin indent on

    " Put these in an autocmd group, so that we can delete them easily.
    augroup vimrcEx
        au!

        " For all text files set 'textwidth' to 78 characters.
        autocmd FileType text setlocal textwidth=78

        " When editing a file, always jump to the last known cursor position.
        " Don't do it when the position is invalid or when inside an event handler
        " (happens when dropping a file on gvim).
        " Also don't do it when the mark is in the first line, that is the default
        " position when opening a file.
        autocmd BufReadPost *
                    \ if line("'\"") > 1 && line("'\"") <= line("$") |
                    \   exe "normal! g`\"" |
                    \ endif

    augroup END

else

    set autoindent      " always set autoindenting on

endif " has("autocmd")

" 色彩控制
autocmd Filetype java,javascript colorscheme torte


"tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_width = 30
" autocmd VimEnter * nested :call tagbar#autoopen(1) " 打开vim的时候自动打开tagbar
let g:tagbar_right = 1

"nerdtree
map <F3> :NERDTreeMirror<CR>
map <F4> :NERDTreeToggle<CR>

"自动缩进
autocmd FileType c,cpp,java,pl,sh,py set formatoptions=croql cindent
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
nnoremap <HOME> ^
inoremap <HOME> <ESC>^i


autocmd Filetype java,javascript,jsp inoremap <buffer>  . .<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  A  A<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  B  B<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  C  C<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  D  D<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  E  E<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  F  F<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  G  G<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  H  H<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  I  I<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  J  J<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  K  K<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  L  L<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  M  M<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  N  N<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  O  O<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  P  P<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  Q  Q<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  R  R<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  S  S<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  T  T<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  U  U<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  V  V<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  W  W<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  X  X<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  Y  Y<C-X><C-O>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  Z  Z<C-X><C-O>
