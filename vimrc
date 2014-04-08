" bundle config
source ~/.vim/bundle.vim

" basic settings
set nocompatible
set encoding=utf-8

let mapleader = ","

" syntax & color
set t_Co=256
set background=dark
syntax enable
colorscheme jellybeans

set relativenumber
set ruler
set showcmd

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

" make backspace work on max + vim
set backspace=indent,eol,start

" save on loosing focus
au FocusLost * :wa

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,public/assets/*,public/assets-test/*,tmp/*"

" deactivate <F1> help
inoremap <F1> :redraw!<CR>:noh<CR>
nnoremap <F1> :redraw!<CR>:noh<CR>
vnoremap <F1> :redraw!<CR>:noh<CR>

" auto indent the code
map <leader>f mf1G=G`f

"remap jump to tag definition - and back
map <leader>t <C-]>
map <leader>o <C-o>

" load last file in buffer to current window
map <leader><leader> <C-^>

" remove trailing spaces
:nnoremap <silent> <F8> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\',
    \ }

map <leader>g :CtrlP<CR>
map <leader>h :CtrlPBuffer<CR>
map <c-t> :CtrlP<CR>
map <c-y> :CtrlPBuffer<CR>


" Unimpaired configuration
" making C-Arrow work under tmux
" see http://superuser.com/questions/401926/how-to-get-shiftarrows-and-ctrlarrows-working-in-vim-in-tmux
if &term =~ '^screen'
  " tmux will send xterm-style keys when its xterm-keys option is on
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

map <D-Left> ]b
map <D-Right> [b


" tcomment
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>


" switch.vim
nnoremap - :Switch<cr>


" vim-easymotion
let g:EasyMotion_leader_key = '<Leader>'

" syntastic
let g:syntastic_ruby_checkers = ['mri']
" let g:syntastic_ruby_checkers=['mri', 'rubocop']

" vimux & vroom
let g:vroom_use_vimux = 1
let g:vroom_use_binstubs = 1

" airline
let g:airline#extensions#tabline#enabled = 1
