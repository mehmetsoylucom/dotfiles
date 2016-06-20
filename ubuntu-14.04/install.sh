#
# Dotfiles
# Author : Mehmet Soylu
# OS : Ubuntu 14.04
# 
exec sudo cp ../Inconsolata-dz.otf /usr/share/fonts/truetype/Inconsolata-dz.otf
exec sudo cp .tmux.com ~
exec sudo cp .bashrc ~

# VIM plugins

exec sudo cp -R .vimrc ~
exec sudo cp -R .vim ~
exec sudo cd ~/.vim/bundle
exec sudo git clone https://github.com/kien/ctrlp.vim
exec sudo git clone https://github.com/scrooloose/nerdtree
exec sudo git clone https://github.com/ervandew/supertab
exec sudo git clone https://github.com/Lokaltog/vim-easymotion
exec sudo git clone https://github.com/thoughtbot/vim-rspec

