let g:solarized_termcolors = 256
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'
let g:airline_solarized_bg = 'dark'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
\ '0': '⓪:',
\ '1': '⓵ ',
\ '2': '⓶,',
\ '3': '⓷ ',
\ '4': '⓸ ',
\ '5': '⓹ ',
\ '6': '⓺ ',
\ '7': '⓻ ',
\ '8': '⓼ ',
\ '9': '⓽ '
\}

syntax enable
set background=dark
colorscheme solarized
filetype plugin indent on
set t_Co=256

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
set nocompatible
set number
set ruler
set shiftwidth=4
set showmatch
set sidescroll=1
set smarttab
set tabpagemax=50
set tabstop=4
set termguicolors
set ttyfast
set wildmenu
set wildmode=list:full,full

noremap æ :w<cr>
noremap œ :q!<cr>
noremap € :e!<cr>
noremap ∑ :x<cr>

noremap <Tab> :bn<cr>
noremap <S-Tab> :bp<cr>
noremap ∂ :bd<cr>

noremap ] :vsplit<cr>
noremap – :split<cr>

noremap † :terminal<cr>

autocmd filetype c,cpp,h noremap <buffer> ß :make all<cr>
autocmd filetype c,cpp,h noremap <buffer> © :make clean<cr>
autocmd filetype c,cpp,h noremap <buffer> ® :make rebuild<cr>
autocmd filetype c,cpp,h noremap <buffer> ç :Termdebug<cr>

"inoremap ' ''<esc>i
"inoremap " ""<esc>i
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i
inoremap < <><esc>i

packadd termdebug
let g:termdebugger = "arm-none-eabi-gdb"

