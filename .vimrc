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
set number
set ruler
set shiftwidth=4
set showmatch
set smarttab
set tabstop=4
set ttyfast
set wildmenu
set wildoptions=pum

noremap <silent> æ :w!<cr>
noremap <silent> œ :q!<cr>
noremap <silent> € :e!<cr>
noremap <silent> ∑ :x!<cr>
noremap <silent> ∂ :bd!<cr>

noremap <silent> <Tab> :bn<cr>
noremap <silent> <S-Tab> :bp<cr>

noremap <silent> <esc><esc> :nohlsearch<cr>

autocmd filetype c,cpp,h noremap <buffer> ß :make all<cr>
autocmd filetype c,cpp,h noremap <buffer> © :make clean<cr>
autocmd filetype c,cpp,h noremap <buffer> ® :make rebuild<cr>

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:cpp_function_highlight = 1
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1
