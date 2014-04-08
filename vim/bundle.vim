if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

" dependeny libs

" editor improvements
NeoBundle 'jeffkreeftmeijer/vim-numbertoggle'
NeoBundle 'ervandew/supertab'
NeoBundle 'vim-scripts/matchit.zip'
NeoBundle 'malkomalko/projections.vim'
NeoBundle 'benmills/vimux'
NeoBundle 'skalnik/vim-vroom'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'bling/vim-airline'

" coding enhancements
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle "tomtom/tcomment_vim"
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'AndrewRadev/switch.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'supasorn/vim-easymotion'
NeoBundle 'mattn/emmet-vim'

" languages
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'nelstrom/vim-textobj-rubyblock'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-haml'
NeoBundle 'ap/vim-css-color'
NeoBundle "cakebaker/scss-syntax.vim"
NeoBundle 'groenewege/vim-less'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'nono/vim-handlebars'
NeoBundle 'avakhov/vim-yaml'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'rradonic/vim-jst'

" frameworks & libs
NeoBundle 'tpope/vim-rails'
NeoBundle 'jQuery'


" testing & code quality
NeoBundle 'Keithbsmiley/rspec.vim'


" version control
NeoBundle 'tpope/vim-fugitive'



filetype plugin indent on
