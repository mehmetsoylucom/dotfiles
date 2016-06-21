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
cp -fr .zshrc ~
cp -fr .profile ~

# VIM 
cp -rf .vimrc ~
cp -Rrf .vim ~

# Rbenv

sudo apt-get update 
sudo apt-get install zsh git tig tmux rake ruby console-data 
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
source ~/.zshrc
source ~/.bashrc
source ~/.vimrc
source ~/.profile
