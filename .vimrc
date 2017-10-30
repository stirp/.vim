let g:pathogen_disabled = []

if v:version < '704' " 在7.4以前的版本禁用ultisnips
    call add(g:pathogen_disabled, 'ultisnips')
endif

execute pathogen#infect()

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

syntax on " 语法高亮
filetype plugin indent on " 文件类型检测 文件类型缩进

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup        " do not keep a backup file, use versions instead
set number          " has line number
set history=5000    " keep 50 lines of command line history
set ruler           " show the cursor position all the time
set showcmd         " display incomplete commands
set incsearch       " do incremental searching
set hlsearch        " highlighting search key

autocmd FileType text setlocal textwidth=78 " For all text files set 'textwidth' to 78 characters.
autocmd BufReadPost *
            \ if line("'\"") > 1 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif " When editing a file, always jump to the last known cursor position.

" 色彩控制
" autocmd Filetype java,javascript colorscheme torte

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

" javacomplete2
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType java setlocal omnifunc=javacomplete#Complete
" autocmd FileType java call javacomplete#StartServer()
" autocmd FileType java call javacomplete#JCserverStart()
autocmd FileType java nnoremap <C-S-O> call javacomplete#AddImport()<cr>
set completeopt=longest,menu

autocmd InsertLeave * se nocul  " 用浅色高亮当前行    
autocmd InsertEnter * se cul    " 用浅色高亮当前行

" inoremap <expr> <CR>   MaySelect()
function MaySelect()
    if(pumvisible())
        let g:pumselect = 1
        return "\<DOWN>"
    endif
    return "\<TAB>"
endfunc

" inoremap <expr> <C-Space> MayComplete()
func MayComplete()
    if (pumvisible() && g:pumselect)
        let g:pumselect = 0
        return "\<CR>"
    endif
    return "\<Space>"
endfunc

" inoremap <expr> <C-CR> StateChangeEnter()
func StateChangeEnter()
    let g:pumselect = 0
    return "\<CR>"
endfunc

set statusline=%F%m%r%h%w\ \ [FORMAT=%{&ff}]\ \ [ENCODING=%{&encoding}]\ \ [TYPE=%Y]\ \ [POS=%l,%v][%p%%]\ \ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容    
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)

set encoding=utf-8  " 设置默认编码为utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936  " 字符兼容性设置  

set foldenable      " 允许折叠    
set foldmethod=manual   " 手动折叠    
set cursorline      " 突出当前行
set magic           " 设置魔术

"行内替换  
set gdefault  

" 增强模式中的命令行自动完成操作  
set wildmenu  

" 高亮显示匹配的括号  
set showmatch  
" 匹配括号高亮的时间（单位是十分之一秒）  
set matchtime=1  

"inoremap ( ()<ESC>i
"inoremap ) <c-r>=ClosePair(')')<CR>
"inoremap { {<CR>}<ESC>O
"inoremap } <c-r>=ClosePair('}')<CR>
"inoremap [ []<ESC>i
"inoremap ] <c-r>=ClosePair(']')<CR>
"inoremap " ""<ESC>i
"inoremap ' ''<ESC>i
"inoremap < <><ESC>i
"function! ClosePair(char) " 用于防止重复输入闭合框
"    if getline('.')[col('.') - 1] == a:char
"        return "\<Right>"
"    else  
"       return a:char 
"    endif  
"endfunc

" space 选中待选
"inoremap <expr> <Space> MayComplete()

autocmd Filetype java,javascript,jsp inoremap <buffer>  .  .<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  A  A<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  B  B<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  C  C<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  D  D<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  E  E<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  F  F<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  G  G<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  H  H<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  I  I<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  J  J<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  K  K<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  L  L<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  M  M<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  N  N<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  O  O<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  P  P<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  Q  Q<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  R  R<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  S  S<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  T  T<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  U  U<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  V  V<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  W  W<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  X  X<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  Y  Y<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  Z  Z<C-X><C-O><C-P>
