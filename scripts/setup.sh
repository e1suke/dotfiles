#! /bin/bash

# Move dotfiles
mv {_,~/.}gitconfig
ln ~/.gitconfig ./_gitconfig

mv {_,~/.}tmux.conf
ln ~/.tmux.conf ./_tmux.conf

mv {_,~/.}vimrc
ln ~/.vimrc ./_vimrc

# Install vim-plug
# https://github.com/junegunn/vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

# Install plugins
vim  -c "PlugInstall"  -c q -c q
