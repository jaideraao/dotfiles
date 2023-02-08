"let g:solarized_termcolors = 256
"let g:airline_powerline_fonts = 1
"let g:airline_theme = 'solarized'
"let g:airline_solarized_bg = 'dark'

"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'unique_tail'

syntax enable
set background=dark
colorscheme default
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
set t_Co=256
highlight VertSplit cterm=NONE

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
set tabpagemax=50
set tabstop=4
"set termguicolors
set ttyfast
set wildmenu
set wildoptions=pum

noremap æ :w<cr>
noremap œ :q!<cr>
noremap € :e!<cr>
noremap ∑ :x<cr>
noremap … :ls<cr>

noremap <Tab> :bn<cr>
noremap <S-Tab> :bp<cr>
noremap ∂ :bd<cr>

noremap ] :vsplit<cr>
noremap – :split<cr>

noremap † :Termdebug<cr>

autocmd filetype c,cpp,h noremap <buffer> ß :make all<cr>
autocmd filetype c,cpp,h noremap <buffer> © :make clean<cr>
autocmd filetype c,cpp,h noremap <buffer> ® :make rebuild<cr>
autocmd filetype c,cpp,h noremap <buffer> ç :Termdebug<cr>

packadd termdebug
let g:termdebugger = "arm-none-eabi-gdb"

"if executable('clangd')
"    augroup lsp_clangd
"        autocmd!
"        autocmd User lsp_setup call lsp#register_server({
"            \ 'name': 'clangd',
"            \ 'cmd': {server_info->['clangd']},
"            \ 'whitelist': ['c', 'cpp'],
"            \ })
"        autocmd FileType c setlocal omnifunc=lsp#complete
"        autocmd FileType cpp setlocal omnifunc=lsp#complete
"    augroup end
"endif
