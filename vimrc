" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'

call plug#end()

syntax on
set hlsearch
set ignorecase
set incsearch
set number
set noswapfile
inoremap jk <ESC>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set laststatus=2
