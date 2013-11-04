" vundle config
source ~/.vim/bundle.vim

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




" Unite.vim
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_reverse'])

let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:unite_source_history_yank_enable = 1

nnoremap <F3> :Unite -start-insert file_rec/async<CR>
nnoremap <F4> :Unite -start-insert buffer<CR>
nnoremap <F5> :Unite -start-insert grep:.<CR>
nnoremap <F6> :Unite history/yank<cr>

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings() "{{{
  " Overwrite settings.
  nmap <buffer> <ESC> <Plug>(unite_exit)
  imap <silent><buffer><expr> <C-s> unite#do_action('split')
  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
endfunction "}}}
