filetype plugin indent on

set number
set mouse=a
syntax enable
syntax on

set nobackup
set nowb
set noswapfile

set colorcolumn=80
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

set tabstop=4 
set softtabstop=0
set expandtab
set shiftwidth=4

set t_Co=256
:imap jj <Esc>

" VIM Plugin Manager

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-multiple-cursors'

" Initialize plugin system
call plug#end()

"Enable tagbar on startup"
autocmd FileType py call tagbar#autoopen(0)

" Set colorscheme
colorscheme gruvbox

set termguicolors
" colorscheme dracula

" Set dark background
set background=dark

" Open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Change the vim-airline theme
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled = 1

