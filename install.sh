#!/bin/bash

# Linking
ln -sfn ~/.dotfiles/zshrc ~/.zshrc
ln -sfn ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -sfn ~/.dotfiles/vimrc ~/.vimrc
ln -sfn ~/.dotfiles/vim ~/.vim

# Neobundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim -c ':NeoBundleInstall|q'
