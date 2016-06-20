#
# Dotfiles
# Author : Mehmet Soylu
# OS : Ubuntu 14.04
# 

# add font

exec sudo cp -rf ../Inconsolata-dz.otf /usr/share/fonts/truetype/Inconsolata-dz.otf

# add config dotfiles for tmux and git

exec sudo cp -rf .tmux.com .bashrc .gitignore .gitconfig ~

# VIM plugins

exec sudo cp -rf .vimrc ~
exec sudo cp -Rrf .vim ~
exec sudo cd ~/.vim/bundle
exec sudo rm -R ~/.vim/bundle/ctrlp.vim && sudo git clone https://github.com/kien/ctrlp.vim
exec sudo rm -R ~/.vim/bundle/nerdtree && sudo git clone https://github.com/scrooloose/nerdtree
exec sudo rm -R ~/.vim/bundle/supertab && sudo git clone https://github.com/ervandew/supertab
exec sudo rm -R ~/.vim/bundle/vim-easymotion && sudo git clone https://github.com/Lokaltog/vim-easymotion
exec sudo rm -R ~/.vim/bundle/vim-rspec && sudo git clone https://github.com/thoughtbot/vim-rspec

