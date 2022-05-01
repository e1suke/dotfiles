#! /bin/bash

# Move dotfiles
mv {_,~/.}gitconfig
ln -s ~/.gitconfig ./_gitconfig

mv {_,~/.}tmux.conf
ln -s ~/.tmux.conf ./_tmux.conf

mv {_,~/.}vimrc
ln -s ~/.vimrc ./_vimrc

# Install dein.vim
# https://github.com/Shougo/dein.vim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

# Install NERDTree
# https://github.com/preservim/nerdtree
vim  -c "call dein#install()"  -c q

# Install vim-airline
# https://github.com/vim-airline/vim-airline
vim -c "call dein#add('vim-airline/vim-airline')" -c q
