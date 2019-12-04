if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()
    " Allow .ing plugins actions
    Plug 'tpope/vim-repeat'
    " Git integration
    Plug 'tpope/vim-fugitive'
    " Edit surroundings: parentheses, brackets, quotes, XML tags, and more
    Plug 'tpope/vim-surround'
    " Comment stuff out
    Plug 'tpope/vim-commentary'
    " Color scheme
    Plug 'jonathanfilip/vim-lucius'
    Plug 'lifepillar/vim-solarized8'
    " Display CSS color
    Plug 'ap/vim-css-color'
    " Auto complete
    Plug 'Valloric/YouCompleteMe'
    " No distractions
    Plug 'junegunn/goyo.vim'
    " PEP8 syntax checker
    Plug 'nvie/vim-flake8'
    " Django syntax highlighting
    Plug 'tweekmonster/django-plus.vim'
    Plug 'Chiel92/vim-autoformat'
    " Linediff
    Plug 'AndrewRadev/linediff.vim'
    " Indent motion
    Plug 'jeetsukumaran/vim-indentwise'
call plug#end()
set termguicolors
"set background=light
"colorscheme solarized
"set t_Co=256
colorscheme lucius
LuciusLight
"set guifont=DejaVu\ Sans\ Mono\ 12
"set antialias
syntax on
set number relativenumber
set scrolloff=3
set mouse=a
set ruler
set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P
"set colorcolumn=80
set pastetoggle=<F5>
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
set title
set wrap
set hidden
set linebreak
set tags+=.tags

"filetype on
filetype plugin indent on

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
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

inoremap ;; <Esc>
noremap ;; <Esc>

nnoremap <leader>g :Goyo
nnoremap <leader>f :exe ':silent !firefox %'<CR>
nnoremap <leader>y "+y
nnoremap <leader>d "_d
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>cf :let @+=expand("%")<CR>
nnoremap <leader>cp :let @+=expand("%:p")<CR>

let g:netrw_banner = 0
set path=$PWD/**
set wildignore+=*.pyc
set foldmethod=indent
set foldlevel=99

"inoremap <esc> <nop>
