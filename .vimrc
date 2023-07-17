let mapleader="\<space>"

set autoindent
set autoread
set autowrite
set belloff=all
set clipboard=unnamed
set dictionary+=/usr/share/dict/words
set encoding=utf-8
set expandtab
set fileformat=unix
set fillchars+=eob:\ ,vert:\|
set foldlevel=99
set foldmethod=indent
set fsync
set hlsearch
set ignorecase
set incsearch
set laststatus=0
set linebreak
set nocompatible
set noshowmode
set number
set shiftwidth=4
set showmatch
set smartindent
set smarttab
set softtabstop=4
set spell spelllang=es
set splitbelow
set splitright
set tabstop=4
set ttyfast
set wildmenu
set wildoptions=pum
set wrap

syntax enable
set background=dark
colorscheme solarized

highlight Comment cterm=italic
highlight VertSplit ctermbg=bg

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

noremap <silent> <leader>w :up!<cr>
noremap <silent> <leader>q :q!<cr>
noremap <silent> <leader>e :e!<cr>
noremap <silent> <leader>x :x!<cr>
noremap <silent> <leader>d :bd!<cr>
noremap <silent> <leader>a :%bd!<cr>
noremap <silent> <leader>o :Explore<cr>
noremap <silent> <leader>. :pwd<cr>
noremap <silent> <tab> :bn<cr>
noremap <silent> <s-tab> :bp<cr>
noremap <silent> <leader><space> :noh<cr>

noremap <leader>1 <Plug>AirlineSelectTab1
noremap <leader>2 <Plug>AirlineSelectTab2
noremap <leader>3 <Plug>AirlineSelectTab3
noremap <leader>4 <Plug>AirlineSelectTab4
noremap <leader>5 <Plug>AirlineSelectTab5
noremap <leader>6 <Plug>AirlineSelectTab6
noremap <leader>7 <Plug>AirlineSelectTab7
noremap <leader>8 <Plug>AirlineSelectTab8
noremap <leader>9 <Plug>AirlineSelectTab9
noremap <leader>0 <Plug>AirlineSelectTab0

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline#extensions#tabline#buffer_idx_mode=1
let g:airline#extensions#lsp#enabled=1

let g:NERDSpaceDelims=1
let g:NERDTrimTrailingWhitespace=1
let g:NERDToggleCheckAllLines=1

let g:ansible_name_highlight='b'
let g:ansible_extra_keywords_highlight=1

let g:markdown_fenced_languages = ['git', 'vim', 'ansible', 'c']

autocmd BufRead,BufNewFile *.yml,*.yaml set filetype=yaml.ansible
autocmd FileType *.yml,*.yaml setlocal expandtab tabstop=2 ai shiftwidth=2 nu softtabstop=0

augroup ansible_vim_fthosts
    autocmd!
    autocmd BufRead,BufNewFile hosts setfiletype yaml.ansible
augroup END
