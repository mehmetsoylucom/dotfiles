#!/bin/bash

#
# Dotfiles
# Author : Mehmet Soylu
# OS : Ubuntu 14.04
# 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# add font

sudo cp -rf ../Inconsolata-dz.otf /usr/share/fonts/truetype/Inconsolata-dz.otf

# add config dotfiles for tmux and git

cp -fr .gitconfig ~
cp -fr .tmux.conf  ~
cp -fr .bashrc ~
cp -fr .gitignore ~

# VIM 
cp -rf .vimrc ~
cp -Rrf .vim ~

# Rbenv

sudo apt-get update 
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.zshrc

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile
source ~/.zshrc
source ~/.bashrc
source ~/.vimrc
