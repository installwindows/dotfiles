if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()
    "Git integration
    Plug 'tpope/vim-fugitive'
    "Edit surroundings: parentheses, brackets, quotes, XML tags, and more
    Plug 'tpope/vim-surround'
    "Detect indent
    "Plug 'tpope/vim-sleuth'
    "Color sheme
    Plug 'jonathanfilip/vim-lucius'
    Plug 'jnurmine/Zenburn'
    "Auto complete
    Plug 'Valloric/YouCompleteMe'
    "Text and only text
    Plug 'junegunn/goyo.vim'
    "PEP8 syntax checker
    Plug 'nvie/vim-flake8'
    "Django syntax highlighting
    Plug 'tweekmonster/django-plus.vim'
call plug#end()
"set background=light
"colorscheme solarized
set t_Co=256
colorscheme lucius
"colorscheme zenburn
LuciusLight
"set guifont=DejaVu\ Sans\ Mono\ 12
"set antialias
syntax on
"set number relativenumber
set number
set scrolloff=3
set mouse=a
set ruler
"set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}\ %{SleuthIndicator()}\ %=%-14.(%l,%c%V%)\ %P
set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P
"set colorcolumn=80
set pastetoggle=<F5>
set tabstop=4
set shiftwidth=4
set title
set wrap
set hidden
set linebreak

"filetype on
filetype plugin indent on
set smartindent

set expandtab

set nocompatible

set encoding=utf-8

set modelines=1

set ttyfast

set backspace=indent,eol,start

set laststatus=2

set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

set splitbelow splitright
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

imap ;; <Esc>
map ;; <Esc>

map <leader>g :Goyo
map <leader>f :exe ':silent !firefox %'<CR>
map <leader>y "+y
map <Leader>d "_d

let g:netrw_banner = 0
set path=$PWD/**
set wildignore+=*.pyc
set foldmethod=indent
set foldlevel=99
