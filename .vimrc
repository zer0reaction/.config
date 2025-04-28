set nu
set rnu

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
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

set list
set listchars=tab:>>

set colorcolumn=81

let mapleader=" "

nnoremap <leader>e :Ex<Enter>

nnoremap j :tabp<Enter>
nnoremap k :tabn<Enter>
nnoremap t :tabnew<Enter>

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzz
nnoremap N Nzz

inoremap c <Esc>
vnoremap c <Esc>
nnoremap c <Esc>

inoremap s <Esc>:w<Enter>
nnoremap s <Esc>:w<Enter>
vnoremap s <Esc>:w<Enter>

syntax enable
colorscheme slate
