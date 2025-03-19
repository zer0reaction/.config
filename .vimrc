set nu
set rnu

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent
set wrap
set linebreak

set noswapfile
set nobackup

set undofile
set undodir=~/.vim/undodir
if !isdirectory(expand("~/.vim/undodir"))
    call mkdir(expand("~/.vim/undodir"), "p")
endif

set nohlsearch
set incsearch

set termguicolors
set signcolumn=yes

set scrolloff=8
set updatetime=50
set showcmd
set autoread
set timeoutlen=1000 ttimeoutlen=0

let mapleader=" "

nnoremap <leader>e :Ex<Enter>
nnoremap <C-j> :tabp<Enter>
nnoremap <C-k> :tabn<Enter>
nnoremap <C-t> :tabnew<Enter>
inoremap <C-c> <Esc>

syntax enable
colorscheme habamax
