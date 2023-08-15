set autoindent
set autoread
set autowrite
set autowriteall
set belloff=all
set clipboard=unnamed
set completeopt=menuone,preview,popup,noinsert
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
set term=$TERM
set ttyfast
set wildmenu
set wildoptions=pum
set wrap

syntax enable
filetype plugin indent on
set omnifunc=syntaxcomplete#complete
set completefunc=syntaxcomplete#Complete

set background=dark
colorscheme solarized

highlight Comment cterm=italic
highlight CursorLineNr cterm=bold ctermfg=gray
highlight LineNr ctermbg=none
highlight MatchParen cterm=bold,underline ctermbg=none
highlight SignColumn ctermbg=none
highlight VertSplit ctermbg=none

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

" let g:airline_powerline_fonts=1
" let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#formatter='unique_tail'
" let g:airline#extensions#tabline#buffer_idx_mode=1
" let g:airline#extensions#lsp#enabled=1

" let g:SuperTabDefaultCompletionType="<c-x><c-o>"
" let g:SuperTabContextDefaultCompletionType="context"

let g:NERDSpaceDelims=1
let g:NERDTrimTrailingWhitespace=1
let g:NERDToggleCheckAllLines=1

let g:ansible_extra_keywords_highlight=1
let g:ansible_name_highlight='b'

let g:markdown_fenced_languages=['c', 'cpp', 'git', 'vim', 'swift', 'ansible']
let g:markdown_folding=1

let g:lsp_async_completion=1
let g:lsp_diagnostics_echo_cursor=1
let g:lsp_diagnostics_virtual_text_enabled=0
let g:lsp_hover_ui='preview'
let g:lsp_semantic_enabled=1
let g:lsp_use_native_client=1

augroup lenguaje_swift
    autocmd!
    autocmd BufWritePre *.swift LspDocumentFormatSyn
    autocmd BufRead,BufNewFile *.swift,*.swiftinterface set ft=swift
    " autocmd FileType c,cpp,h packadd termdebug
    " autocmd FileType c,cpp,h let g:termdebugger="arm-none-eabi-gdb"
    autocmd FileType swift setlocal omnifunc=lsp#complete
    autocmd FileType swift setlocal completefunc=lsp#complete
    autocmd FileType swift setlocal tagfunc=lsp#tagfunc
    " autocmd FileType c,cpp,h,make noremap <buffer> <leader>b :make all<cr>
    " autocmd FileType c,cpp,h,make noremap <buffer> <leader>c :make clean<cr>
    " autocmd FileType c,cpp,h,make noremap <buffer> <leader>r :make rebuild<cr>
augroup end

augroup lenguaje_c
    autocmd!
    autocmd BufWritePre *.c,*.cpp,*.h LspDocumentFormatSyn
    autocmd FileType c,cpp,h packadd termdebug
    autocmd FileType c,cpp,h let g:termdebugger="arm-none-eabi-gdb"
    autocmd FileType c,cpp,h setlocal omnifunc=lsp#complete
    autocmd FileType c,cpp,h setlocal tagfunc=lsp#tagfunc
    autocmd FileType c,cpp,h,make noremap <buffer> <leader>b :make all<cr>
    autocmd FileType c,cpp,h,make noremap <buffer> <leader>c :make clean<cr>
    autocmd FileType c,cpp,h,make noremap <buffer> <leader>r :make rebuild<cr>
augroup end

augroup filetype_yml
    autocmd!
    autocmd FileType hosts setlocal filetype=yaml.ansible
    autocmd FileType yml,yaml setlocal filetype=yaml.ansible expandtab tabstop=2 ai shiftwidth=2 nu softtabstop=0
augroup end

augroup filetype_md
    autocmd FileType markdown setlocal spell spelllang=es
augroup end

if executable('sourcekit-lsp')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'sourcekit-lsp',
                \ 'cmd': {server_info->['sourcekit-lsp']},
                \ 'whitelist': ['swift'],
                \ 'config': { 'filter': { 'name': 'contains' } }
                \ })
endif

if executable('clangd')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'clangd',
                \ 'cmd': {server_info->['clangd', '-background-index']},
                \ 'whitelist': ['c', 'cpp'],
                \ 'config': { 'filter': { 'name': 'contains' } }
                \ })
endif
