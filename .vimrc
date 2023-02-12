let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

syntax enable
set background=dark
colorscheme solarized
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
highlight vertsplit cterm=NONE
highlight vertsplit term=NONE

set autoindent
set autoread
set autowrite
set belloff=all
set encoding=utf-8
set expandtab
set fsync
set history=10000
set hlsearch
set ignorecase
set incsearch
set laststatus=0
set nocompatible
set number
set ruler
set shiftwidth=4
set showmatch
set sidescroll=1
set smarttab
set tabstop=4
set ttyfast
set wildmenu
set wildoptions=pum

noremap æ :w<cr>
noremap œ :q!<cr>
noremap € :e!<cr>
noremap ∑ :x!<cr>

noremap <Tab> :bn<cr>
noremap <S-Tab> :bp<cr>
noremap ∂ :bd<cr>

noremap ] :vsplit<cr>
noremap – :split<cr>

autocmd filetype c,cpp,h noremap <buffer> ß :make all<cr>
autocmd filetype c,cpp,h noremap <buffer> © :make clean<cr>
autocmd filetype c,cpp,h noremap <buffer> ® :make rebuild<cr>
