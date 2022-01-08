" --- General ---

syntax on

set expandtab smartindent number relativenumber noswapfile nobackup undofile incsearch ignorecase smartcase hlsearch splitbelow splitright hidden 
set undodir=~/.config/nvim/undodir
set tabstop=4
set softtabstop=4
set shiftwidth=4
set numberwidth=4
set scrolloff=16
set mouse=a
set encoding=UTF-8
set updatetime=250
set signcolumn=number


" --- Plugins ---

call plug#begin('~/.config/nvim/plugged')

Plug 'sainnhe/gruvbox-material'

call plug#end()

" --- Colors ---
set background=dark
set termguicolors
colorscheme gruvbox-material


" --- Key mapping

map <Space> <Leader>
map <C-n> :nohl<CR>

map <Leader>cs :source $HOME/.config/nvim/init.vim<CR>
map <Leader>co :vs $HOME/.config/nvim/init.vim<CR>
map <Leader>pi :PlugInstall<CR>
"map <Leader>
"map <Leader>



" Remove hl after sourcing config file
let @/ = ""
