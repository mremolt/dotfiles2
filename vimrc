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


" Unite.vim
call unite#filters#matcher_default#use(['matcher_fuzzy'])
" call unite#filters#sorter_default#use(['sorter_reverse'])

let g:unite_source_history_yank_enable = 1
let g:unite_source_rec_async_command = "ack-grep -f --nofilter --ignore-dir=spec/fixtures/integration --ignore-dir=coverage --ignore-dir=log --ignore-file='match:/tmux.*.log/' --ignore-file='match:^tags$'"

nnoremap <F3> :Unite -start-insert file_rec/async<CR>
nnoremap <F4> :Unite -start-insert buffer<CR>
nnoremap <F5> :Unite -start-insert grep:.<CR>
nnoremap <F6> :Unite -start-insert tag<cr>

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings() "{{{
  " Overwrite settings.
  nmap <buffer> <ESC> <Plug>(unite_exit)
  imap <silent><buffer><expr> <C-s> unite#do_action('split')
  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
endfunction "}}}


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
