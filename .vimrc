let mapleader="\<space>"

" packadd termdebug
" let g:termdebugger = "arm-none-eabi-gdb"

set autoindent
set autoread
set autowrite
set belloff=all
set clipboard=unnamed
set cursorline
set encoding=utf-8
set expandtab
set fileformat=unix
set foldlevel=99
set foldmethod=indent
set fsync
set hlsearch
set ignorecase
set incsearch
set laststatus=0
set nocompatible
set number
set shiftwidth=4
set showmatch
set smarttab
set softtabstop=4
set splitbelow
set splitright
set tabstop=4
set termguicolors
set textwidth=79
set ttyfast
set wildmenu
set wildoptions=pum

syntax enable
" set t_Co=256
" set t_ut=
let g:onedark_hide_endofbuffer = 1
" let g:onedark_termcolors = 256
let g:onedark_terminal_italics = 1
set background=dark
colorscheme onedark
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

noremap <silent> <leader>w :up!<cr>
noremap <silent> <leader>q :q!<cr>
noremap <silent> <leader>e :e!<cr>
noremap <silent> <leader>x :x!<cr>
noremap <silent> <leader>d :bd!<cr>
noremap <silent> <leader>a :%bd!<cr>
noremap <silent> <leader>. :pwd<cr>
noremap <silent> <tab> :bn<cr>
noremap <silent> <s-tab> :bp<cr>
noremap <silent> <leader><esc> :noh<cr>

" autocmd filetype c,cpp,h,make noremap <buffer> <leader>b :make all<cr>
" autocmd filetype c,cpp,h,make noremap <buffer> <leader>c :make clean<cr>
" autocmd filetype c,cpp,h,make noremap <buffer> <leader>r :make rebuild<cr>

" let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

" let g:lsp_use_native_client = 1
" let g:lsp_semantic_enabled = 1
" let g:lsp_diagnostics_echo_cursor = 1
" let g:lsp_diagnostics_float_cursor = 1
" let g:lsp_diagnostics_float_insert_mode_enabled = 1
" let g:lsp_diagnostics_highlights_insert_mode_enabled = 1
" let g:lsp_inlay_hints_enabled = 1
" let g:lsp_async_completion = 1

" if executable('clangd')
" augroup lsp_clangd
" autocmd!
" autocmd User lsp_setup call lsp#register_server({
" \ 'name': 'clangd',
" \ 'cmd': {server_info->['clangd', '-background-index']},
" \ 'whitelist': ['c', 'cpp'],
" \ })
" autocmd FileType c,cpp setlocal omnifunc=lsp#complete
" autocmd FileType c,cpp setlocal tagfunc=lsp#tagfunc
" augroup end
" endif
