let mapleader="\<space>"

syntax enable
setlocal background=dark
colorscheme solarized
filetype plugin indent on
setlocal omnifunc=syntaxcomplete#Complete

setlocal autoindent
setlocal autoread
setlocal autowrite
setlocal belloff=all
setlocal encoding=utf-8
setlocal expandtab
setlocal fsync
setlocal hlsearch
setlocal ignorecase
setlocal incsearch
setlocal laststatus=0
setlocal nocompatible
setlocal number
setlocal ruler
setlocal shiftwidth=4
setlocal showmatch
setlocal smarttab
setlocal tabstop=4
setlocal ttyfast
setlocal undofile
setlocal wildmenu
setlocal wildoptions=pum

noremap <silent> <leader>w :up!<cr>
noremap <silent> <leader>q :q!<cr>
noremap <silent> <leader>e :e!<cr>
noremap <silent> <leader>x :x!<cr>
noremap <silent> <leader>d :bd!<cr>
noremap <silent> <leader>a :%bd!<cr>
noremap <silent> <leader>. :pwd<cr>
"noremap <silent> <tab> :bn<cr>
"noremap <silent> <s-tab> :bp<cr>
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
noremap <tab> <Plug>AirlineSelectPrevTab
noremap <s-tab> <Plug>AirlineSelectNextTab

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

if executable('clangd')
    augroup lsp_clangd
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
            \ 'name': 'clangd',
            \ 'cmd': {server_info->['clangd', '-background-index']},
            \ 'whitelist': ['c', 'cpp'],
            \ })
        autocmd FileType c,cpp setlocal omnifunc=lsp#complete
        autocmd FileType c,cpp setlocal tagfunc=lsp#tagfunc
    augroup end
endif
