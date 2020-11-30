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
    Plug 'tomtom/tcomment_vim'
    " Color scheme
    Plug 'jonathanfilip/vim-lucius'
    Plug 'lifepillar/vim-solarized8'
    " Display CSS color
    Plug 'ap/vim-css-color'
    " Auto complete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " if stridx($HOME, "com.termux") == -1
    "     Plug 'Valloric/YouCompleteMe'
    " endif
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
    Plug 'nathanaelkane/vim-indent-guides'
    "
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()
"set termguicolors
set t_Co=256
"colorscheme solarized
colorscheme lucius
let hr = (strftime('%H'))
if hr >= 8 && hr < 20
    LuciusLight
else
    LuciusDark
endif
"LuciusLight
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
set tabstop=4
set shiftwidth=4
set expandtab
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

nnoremap <leader>g :Goyo
nnoremap <leader>f :exe ':silent !firefox %:p'<CR>
noremap <leader>y "+y
noremap <leader>d "_d
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>cf :let @+=expand("%")<CR>
nnoremap <leader>cp :let @+=expand("%:p")<CR>
nnoremap <leader>s :syntax sync fromstart<CR>
nnoremap <leader>pd oimport pdb; pdb.set_trace()<Esc>

let g:netrw_banner = 0
set path=$PWD/**
set wildignore+=*.pyc
set wildignore+=**/laposte-templates/**
set wildignore+=**/amt-templates/**
set foldmethod=indent
set foldlevel=99

let g:ycm_extra_conf_globlist = ['~/projects/*']
let g:ycm_always_populate_location_list = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#EFEBF1   ctermbg=255
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#EEEEEE ctermbg=254

" CoC configuration
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
