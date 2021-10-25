" Plugins
call plug#begin('~/.vim/plugged')

Plug 'neovim/nvim-lspconfig'

" Autocomplete
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'kyazdani42/nvim-web-devicons' " Icons
Plug 'kyazdani42/nvim-tree.lua' " File Explorer

" Themes
Plug 'arcticicestudio/nord-vim' " Nord theme
Plug 'morhetz/gruvbox'

Plug 'romgrk/barbar.nvim' " Tabs

" Git plugins
Plug 'tpope/vim-fugitive'
Plug 'itchyny/vim-gitbranch'
Plug 'airblade/vim-gitgutter'

" Spell checker
Plug 'kamykn/spelunker.vim'
Plug 'kamykn/popup-menu.nvim'

call plug#end()

colorscheme gruvbox

" Load plugins configs
for f in split(glob('~/.config/nvim/plugin/*.vim'), '\n')
    exe 'source' f
endfor

set nocompatible
syntax on
set mouse=v
set updatetime=100
set showmatch
set tabstop=4
set softtabstop=4
set expandtab
set mouse=a
set clipboard=unnamedplus " using system clipboard 
filetype plugin indent on
set cursorline
set ttyfast
set termguicolors

set hlsearch
set ignorecase
set incsearch
set number
set noswapfile
inoremap jk <ESC>

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:.
set laststatus=2

" turn off search highlight
nnoremap ,<space> :nohlsearch<CR>

" Show whitespaces
noremap <F5> :set list!<CR>
inoremap <F5> <C-o>:set list!<CR>
cnoremap <F5> <C-c>:set list!<CR>

" Mapping to move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

