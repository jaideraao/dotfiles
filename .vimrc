syntax enable
set background=dark
colorscheme solarized
filetype plugin indent on
set t_Co=256

set autoindent
set autoread
set backspace=2
set backspace=indent,eol,start
set belloff=all
set clipboard=unnamed,unnamedplus
set complete-=i
set cscopeverbose
set encoding=utf-8
set expandtab
set foldmethod=indent
set formatoptions=tcqj
set fsync
set history=10000
set hlsearch
set incsearch
set langnoremap
set laststatus=2
set listchars=tab:>\ ,trail:-,nbsp:+
set nrformats=bin,hex
set number
set ruler
set sessionoptions-=options
set shiftwidth=4
set shortmess=F
set showcmd
set sidescroll=1
set smarttab
set tabpagemax=50
set tabstop=4
set tags=./tags;,tags
set ttimeoutlen=50
set ttyfast
set viminfo+=!
set wildmenu
set wildmode=list:longest,full

noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>
noremap <c-u> :w<cr>

inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i

let g:airline_powerline_fonts = 1
