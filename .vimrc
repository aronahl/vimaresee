set encoding=utf-8
set autochdir
set number
set autoindent
set tabstop=4
set expandtab
set shiftwidth=4
syntax on
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
set nocompatible
filetype plugin on
set modeline
set background=dark
set guifont=Source\ Code\ Pro\ for\ Powerline:h14

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'uguu-org/vim-matrix-screensaver'
Plug 'blindFS/vim-regionsyntax'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'bling/vim-bufferline'
Plug 'vim-syntastic/syntastic'
call plug#end()

"start syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_typescript_checkers = ['tslint']
let g:syntastic_enable_typescript_checker = 1

"start signify
let g:signify_realtime = 1

"start gruvbox"
let g:gruvbox_contrast_dark = "hard"
colo gruvbox

"Start nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Start airline
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


let g:airline_left_sep = '»'
let g:airline_right_sep = '«'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

if $TERM_PROGRAM == "iTerm.app"
    let g:airline_symbols.crypt = '🔒'
    let g:airline_symbols.maxlinenr = '☰'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.spell = 'Ꞩ'
    let g:airline_symbols.notexists = '∄'
    let g:airline_symbols.whitespace = 'Ξ'
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
endif
