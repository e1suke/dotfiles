#! /bin/bash

# Move dotfiles
mv {_,~/.}gitconfig
ln ~/.gitconfig ./_gitconfig

mv {_,~/.}tmux.conf
ln ~/.tmux.conf ./_tmux.conf

mv {_,~/.}vimrc
ln ~/.vimrc ./_vimrc

# Install dein.vim
# https://github.com/Shougo/dein.vim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

# Install plugins
vim  -c "call dein#install()"  -c q

