call plug#begin("~/.vim/plugged")
  " Plugin Section

Plug 'deoplete-plugins/deoplete-jedi'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sbdchd/neoformat'
Plug 'davidhalter/jedi-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'morhetz/gruvbox'
Plug 'w0rp/ale'


call plug#end()
"Config Section

" THEME
colorscheme gruvbox
"
" DEOPLETE
let g:deoplete#enable_at_startup = 1

" Enable alignment
let g:neoformat_basic_format_align = 1
"
" " Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
"
"" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

"JEDI VIM
" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0
"
" " open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

let g:gruvbox_contrast_dark = "hard"

"Remap so that tab autocomples
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

