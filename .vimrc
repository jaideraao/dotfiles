" set clipboard=unnamed
" set foldlevel=99
" set foldmethod=indent
" set linebreak
" set scrollbind
" set t_Co=256
" set termguicolors
set autoindent
set autoread
set autowrite
set autowriteall
set belloff=all
set completefunc=syntaxcomplete#Complete
set completeopt=menuone,preview,popup,noinsert
set cursorline
set cursorlineopt=number
set dictionary+=/usr/share/dict/words
set diffopt=algorithm:histogram,filler,indent-heuristic,linematch:60,vertical
set encoding=utf-8
set expandtab
set fileformat=unix
set fillchars+=eob:\ ,vert:\¦
set fsync
set hlsearch
set ignorecase
set incsearch
set laststatus=0
set nocompatible
set noswapfile
set number
set omnifunc=syntaxcomplete#complete
set shiftwidth=4
set showmatch
set smartindent
set smarttab
set softtabstop=4
set splitbelow
set splitright
set tabstop=4
set term=$TERM
set ttyfast
set wildmenu
set wildoptions=pum
set wrap

filetype plugin indent on
syntax enable

set background=dark
" colorscheme habamax
colorscheme solarized

function! s:update_highlights()
    highlight Comment cterm=italic
    highlight CursorLineNr cterm=bold ctermfg=grey
    highlight LineNr ctermbg=none
    highlight MatchParen cterm=bold,underline ctermbg=none
    highlight SignColumn ctermbg=none
    highlight VertSplit ctermbg=none
    highlight debugPC cterm=italic ctermbg=lightgreen
endfunction
autocmd User AirlineAfterTheme call s:update_highlights()

let mapleader="\<space>"

noremap <silent> <leader>bw :up!<cr>
noremap <silent> <leader>be :e!<cr>
noremap <silent> <leader>bx :x!<cr>
noremap <silent> <leader>bd :bd!<cr>
noremap <silent> <leader>ba :%bd!<cr>
noremap <silent> <leader>bl :ls<cr>
noremap <silent> <tab> :bn<cr>
noremap <silent> <s-tab> :bp<cr>

noremap <silent> <leader>wq :q!<cr>
noremap <silent> <leader>wa :qall!<cr>

noremap <silent> <leader>. :pwd<cr>
noremap <silent> <leader><space> :noh<cr>

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#enabled = 1

let g:airline_detect_spell=1
let g:airline_detect_spelllang=1

let g:airline_solarized_dark_text = 1
let g:airline_solarized_dark_inactive_border = 1
let g:airline_highlighting_cache = 1

let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
