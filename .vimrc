set number
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set wrap
set smartindent
set history=500
set undofile
set nohlsearch
set incsearch
set scrolloff=8
set updatetime=50
set colorcolumn=80
set signcolumn=yes
set termguicolors
set wildmenu
set ruler
set showmatch
set background=dark
set laststatus=2

syntax enable
colorscheme desert
let mapleader=" "
nnoremap <leader>e :Ex<Enter>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
