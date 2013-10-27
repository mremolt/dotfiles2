" basic settings
set nocompatible

let mapleader = ","


" syntax & color
syntax enable
set t_Co=256
set background=dark

set relativenumber
set encoding=utf-8

" code display and identation
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·
set colorcolumn=85
set textwidth=79
set formatoptions=qrn1
set autoread

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Status bar
set laststatus=2

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup


" save on loosing focus
au FocusLost * :wa



" deactivate <F1> help
inoremap <F1> :redraw!<CR>:noh<CR>
nnoremap <F1> :redraw!<CR>:noh<CR>
vnoremap <F1> :redraw!<CR>:noh<CR>


" auto indent the code
map <leader>f mf1G=G`f

" load last file in buffer to current window
map <leader><leader> <C-^>

