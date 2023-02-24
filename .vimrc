let mapleader="\<space>"

packadd termdebug
let g:termdebugger = "arm-none-eabi-gdb"

set autoindent
set autoread
set autowrite
set belloff=all
set clipboard=unnamed
set cursorline
set encoding=utf-8
set expandtab
set fsync
set hlsearch
set ignorecase
set incsearch
set nocompatible
set number
set ruler
set shiftwidth=4
set showmatch
set smarttab
set tabstop=4
set termguicolors
set ttyfast
set undofile
set wildmenu
set wildoptions=pum

syntax enable
" set t_Co=256
" set t_ut=
let g:onedark_terminal_italics=1
set background=dark
colorscheme onedark
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

let &t_SI.="\e[5 q"
let &t_SR.="\e[5 q"
let &t_EI.="\e[5 q"
let &t_vi.="\e[5 q"

noremap <silent> <leader>w :up!<cr>
noremap <silent> <leader>q :q!<cr>
noremap <silent> <leader>e :e!<cr>
noremap <silent> <leader>x :x!<cr>
noremap <silent> <leader>d :bd!<cr>
noremap <silent> <leader>a :%bd!<cr>
noremap <silent> <leader>. :pwd<cr>
noremap <silent> <tab> :bn<cr>
noremap <silent> <s-tab> :bp<cr>
noremap <silent> <esc><esc> :noh<cr>

autocmd filetype c,cpp,h,make noremap <buffer> <leader>b :make all<cr>
autocmd filetype c,cpp,h,make noremap <buffer> <leader>c :make clean<cr>
autocmd filetype c,cpp,h,make noremap <buffer> <leader>r :make rebuild<cr>

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_idx_mode = 1
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
" noremap <tab> <Plug>AirlineSelectPrevTab
" noremap <s-tab> <Plug>AirlineSelectNextTab

let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

let g:airline#extensions#lsp#enabled = 1

let g:cpp_function_highlight = 1
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1

let g:lsp_use_native_client = 1
let g:lsp_semantic_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_float_cursor = 1
let g:lsp_diagnostics_float_insert_mode_enabled = 1
let g:lsp_diagnostics_highlights_insert_mode_enabled = 1
let g:lsp_inlay_hints_enabled = 1
let g:lsp_async_completion = 1

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

function! WindowNumber(...)
    let builder = a:1
    let context = a:2
    call builder.add_section('airline_a', ' %{tabpagewinnr(tabpagenr())} ')
    return 0
endfunction

call airline#add_statusline_func('WindowNumber')
call airline#add_inactive_statusline_func('WindowNumber')
