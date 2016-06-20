#!/bin/bash

#
# Dotfiles
# Author : Mehmet Soylu
# OS : Ubuntu 14.04
# 

# add font

sudo cp -rf ../Inconsolata-dz.otf /usr/share/fonts/truetype/Inconsolata-dz.otf

# add config dotfiles for tmux and git

cp -fr .gitconfig ~
cp -fr .tmux.conf  ~
cp -fr .bashrc ~
cp -fr .gitignore ~

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# VIM plugins

mkdir -p ~/.vim/autoload ~/.vim/bundle;
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cp -rf .vimrc ~/
cp -rf .vim ~/
cd ~/.vim/bundle
rm -R ~/.vim/bundle/ctrlp.vim && git clone https://github.com/kien/ctrlp.vim ~/.vim/bundle/ctrlp.vim
rm -R ~/.vim/bundle/nerdtree && git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree
rm -R ~/.vim/bundle/supertab && git clone https://github.com/ervandew/supertab ~/.vim/bundle/supertab
rm -R ~/.vim/bundle/vim-easymotion && git clone https://github.com/Lokaltog/vim-easymotion ~/.vim/bundle/vim-easymotion
rm -R ~/.vim/bundle/vim-rspec && git clone https://github.com/thoughtbot/vim-rspec ~/.vim/bundle/vim-rspec 

