let mapleader="\<space>"

" packadd termdebug
" let g:termdebugger="arm-none-eabi-gdb"

set autoindent
set autoread
set autowrite
set belloff=all
set clipboard=unnamed
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
noremap <silent> <leader>. :pwd<cr>
noremap <silent> <tab> :bn<cr>
noremap <silent> <s-tab> :bp<cr>
noremap <silent> <leader><space> :noh<cr>

noremap <silent> <leader>+ <c-w><c-v>
noremap <silent> <leader>- <c-w><c-s>

noremap <silent> <leader><left> <c-w><c-h>
noremap <silent> <leader><down> <c-w><c-j>
noremap <silent> <leader><up> <c-w><c-k>
noremap <silent> <leader><right> <c-w><c-l>

" autocmd filetype c,cpp,h,make noremap <buffer> <leader>b :make all<cr>
" autocmd filetype c,cpp,h,make noremap <buffer> <leader>c :make clean<cr>
" autocmd filetype c,cpp,h,make noremap <buffer> <leader>r :make rebuild<cr>

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline#extensions#tabline#buffer_idx_mode=1
let g:airline#extensions#lsp#enabled=1

" let g:NERDCreateDefaultMappings=1
let g:NERDSpaceDelims=1
let g:NERDTrimTrailingWhitespace=1
let g:NERDToggleCheckAllLines=1

let g:ansible_name_highlight='b'
let g:ansible_extra_keywords_highlight=1

let g:cpp_attributes_highlight=1
let g:cpp_member_highlight=1
let g:cpp_simple_highlight=1

let g:lsp_use_native_client=1
let g:lsp_semantic_enabled=1
let g:lsp_format_sync_timeout=1000
let g:lsp_diagnostics_enabled=0
" let g:lsp_diagnostics_echo_cursor=1
" let g:lsp_diagnostics_float_cursor=1
" let g:lsp_diagnostics_float_insert_mode_enabled=1
" let g:lsp_diagnostics_highlights_insert_mode_enabled=1
" let g:lsp_inlay_hints_enabled=1
let g:lsp_async_completion=1

if executable('clangd')
    augroup lsp_clangd
        autocmd!
        autocmd User lsp_setup call lsp#register_server({'name': 'clangd', 'cmd': {server_info->['clangd', '-background-index']}, 'whitelist': ['c', 'cpp']})
        autocmd FileType c,cpp setlocal omnifunc=lsp#complete
        autocmd FileType c,cpp setlocal tagfunc=lsp#tagfunc
    augroup end
endif

" if executable('sourcekit-lsp')
    " augroup sourcekit_lsp
        " autocmd!
        " autocmd User lsp_setup call lsp#register_server({'name': 'sourcekit-lsp', 'cmd': {server_info->['sourcekit-lsp']}, 'whitelist': ['swift']})
        " autocmd FileType swift setlocal omnifunc=lsp#complete
        " autocmd FileType swift setlocal tagfunc=lsp#tagfunc
    " augroup end
" endif

autocmd BufRead,BufNewFile *.yml,*.yaml set filetype=yaml.ansible
autocmd FileType *.yml,*.yaml setlocal expandtab tabstop=2 ai shiftwidth=2 nu softtabstop=0
autocmd BufRead,BufNewFile *.swift set filetype=swift

augroup ansible_vim_fthosts
    autocmd!
    autocmd BufNewFile,BufRead hosts setfiletype yaml.ansible
augroup END

" set foldmethod=expr foldexpr=lsp#ui#vim#folding#foldexpr() foldtext=lsp#ui#vim#folding#foldtext()
