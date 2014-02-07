#!/bin/bash

# Package Installation

# postgres backport
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -

sudo add-apt-repository ppa:chris-lea/node.js

sudo apt-get update

sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev \
  libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev vim tmux postgresql-9.3 \
  libpq-dev postgresql-server-dev-9.3 postgresql-contrib-9.3 nodejs zsh indicator-multiload \
  silversearcher-ag xvfb


# Linking
ln -sfn ~/.dotfiles/zshrc ~/.zshrc
ln -sfn ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -sfn ~/.dotfiles/vimrc ~/.vimrc
ln -sfn ~/.dotfiles/vim ~/.vim

# vim temp dir
mkdir ~/.vim/backup

# Neobundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim -c ':NeoBundleInstall|q'

# oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

git config --global color.ui true
git config --global user.name "Marc Remolt"
git config --global user.email "marc.remolt@gmail.com"

git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.0.0-p247
rbenv global 2.0.0-p247

