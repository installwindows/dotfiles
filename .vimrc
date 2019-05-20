if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()
	Plug 'tpope/vim-fugitive'
	Plug 'jonathanfilip/vim-lucius'
	Plug 'Valloric/YouCompleteMe'
	Plug 'junegunn/goyo.vim'
call plug#end()
"set background=light
"colorscheme solarized
colorscheme lucius
LuciusLight
"set guifont=DejaVu\ Sans\ Mono\ 12
"set antialias
syntax on
"set number relativenumber
set number
set scrolloff=3
set mouse=a
"set ruler
"set colorcolumn=80
set pastetoggle=<F5>
set tabstop=4
set shiftwidth=4
set t_Co=256
set title
set wrap
set hidden
set linebreak

filetype on
filetype plugin indent on
set smartindent

set tabstop=4
set shiftwidth=4
set noexpandtab

set nocompatible

set encoding=utf-8

set modelines=1

set hidden

set ttyfast

set backspace=indent,eol,start

"set laststatus=2

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

let g:netrw_banner = 0
set path=$PWD/**
