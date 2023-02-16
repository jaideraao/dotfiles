syntax enable
set background=dark
colorscheme solarized
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

set autoindent
set autoread
set autowrite
set belloff=all
set encoding=utf-8
set expandtab
set fsync
set hlsearch
set ignorecase
set incsearch
set laststatus=0
set nocompatible
set number
set ruler
set shiftwidth=4
set showmatch
set smarttab
set tabstop=4
set termguicolors
set ttyfast
set wildmenu
set wildoptions=pum

noremap æ :w!<cr>
noremap œ :q!<cr>
noremap € :e!<cr>
noremap ∑ :x!<cr>
noremap ∂ :bd!<cr>

noremap <Tab> :bn<cr>
noremap <S-Tab> :bp<cr>

noremap <esc><esc> :nohlsearch<cr>

autocmd filetype c,cpp,h noremap <buffer> ß :make all<cr>
autocmd filetype c,cpp,h noremap <buffer> © :make clean<cr>
autocmd filetype c,cpp,h noremap <buffer> ® :make rebuild<cr>
