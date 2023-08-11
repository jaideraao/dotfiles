let mapleader="\<space>"

packadd termdebug
let g:termdebugger="arm-none-eabi-gdb"

set autoindent
set autoread
set autowrite
set autowriteall
set belloff=all
set clipboard=unnamed
set cursorline
set cursorlineopt=number
set dictionary+=/usr/share/dict/words
set encoding=utf-8
set expandtab
set fileformat=unix
set fillchars+=eob:\ ,vert:\¦
set foldlevel=99
set foldmethod=indent
set fsync
set hlsearch
set ignorecase
set incsearch
set laststatus=0
set linebreak
set nocompatible
set noswapfile
set number
set shiftwidth=4
set showmatch
set signcolumn=no
set smartindent
set smarttab
set softtabstop=4
set splitbelow
set splitright
set t_Co=256
set tabstop=4
set ttyfast
set wildmenu
set wildoptions=pum
set wrap

syntax enable
filetype plugin indent on
set omnifunc=syntaxcomplete#complete

set background=dark
colorscheme solarized

highlight Comment cterm=italic
highlight CursorLineNr cterm=bold ctermfg=gray
highlight LineNr ctermbg=none
highlight MatchParen cterm=bold,underline ctermbg=none
highlight VertSplit ctermbg=none

noremap <silent> <leader>w :up!<cr>
noremap <silent> <leader>q :q!<cr>
noremap <silent> <leader>e :e!<cr>
noremap <silent> <leader>x :x!<cr>
noremap <silent> <leader>d :bd!<cr>
noremap <silent> <leader>a :%bd!<cr>
noremap <silent> <leader>l :ls<cr>
noremap <silent> <leader>o :Explore<cr>
noremap <silent> <leader>. :pwd<cr>
noremap <silent> <tab> :bn<cr>
noremap <silent> <s-tab> :bp<cr>
noremap <silent> <leader><space> :noh<cr>

" noremap <leader>1 <plug>airlineselecttab1
" noremap <leader>2 <plug>airlineselecttab2
" noremap <leader>3 <plug>airlineselecttab3
" noremap <leader>4 <plug>airlineselecttab4
" noremap <leader>5 <plug>airlineselecttab5
" noremap <leader>6 <plug>airlineselecttab6
" noremap <leader>7 <plug>airlineselecttab7
" noremap <leader>8 <plug>airlineselecttab8
" noremap <leader>9 <plug>airlineselecttab9
" noremap <leader>0 <plug>airlineselecttab0
" noremap <tab> <plug>airlineselectprevtab
" noremap <s-tab> <plug>airlineselectnexttab

" nnoremap gr :easycompletereference<cr>
" nnoremap gd :easycompletegotodefinition<cr>
" nnoremap rn :easycompleterename<cr>
" nnoremap gb :backtooriginalbuffer<cr>

" let g:airline_powerline_fonts=1
" let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#formatter='unique_tail'
" let g:airline#extensions#tabline#buffer_idx_mode=1
" let g:airline#extensions#lsp#enabled=1

let g:NERDSpaceDelims=1
let g:NERDTrimTrailingWhitespace=1
let g:NERDToggleCheckAllLines=1

let g:ansible_name_highlight='b'
let g:ansible_extra_keywords_highlight=1

let g:markdown_folding=1
let g:markdown_fenced_languages=['c', 'cpp', 'git', 'vim', 'swift', 'ansible']

let g:lsp_async_completion=1
let g:lsp_diagnostics_echo_cursor=0
let g:lsp_diagnostics_enabled=1
let g:lsp_diagnostics_float_cursor=1
let g:lsp_diagnostics_float_insert_mode_enabled=1
let g:lsp_diagnostics_highlights_insert_mode_enabled=1
let g:lsp_documentation_float_docked=1
let g:lsp_inlay_hints_enabled=1
let g:lsp_preview_float=1
let g:lsp_semantic_enabled=1
let g:lsp_use_native_client=1

augroup lenguaje_c
    autocmd!
    autocmd BufWritePre *.c,*.cpp,*.h LspDocumentFormatSyn
    autocmd filetype c,cpp,h,make noremap <buffer> <leader>b :make all<cr>
    autocmd filetype c,cpp,h,make noremap <buffer> <leader>c :make clean<cr>
    autocmd filetype c,cpp,h,make noremap <buffer> <leader>r :make rebuild<cr>
    autocmd filetype c,cpp,h,make packadd termdebug
    autocmd filetype c,cpp,h let g:termdebugger="arm-none-eabi-gdb"
augroup end

augroup filetype_yml
    autocmd!
    autocmd filetype yml,yaml setlocal filetype=yaml.ansible expandtab tabstop=2 ai shiftwidth=2 nu softtabstop=0
    autocmd filetype hosts setlocal filetype=yaml.ansible
augroup end

augroup filetype_md
    autocmd filetype markdown setlocal spell spelllang=es
augroup end
