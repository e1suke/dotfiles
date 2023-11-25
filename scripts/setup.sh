#! /bin/bash

# Move dotfiles
mv {_,~/.}zshrc
ln ~/.zshrc ./_zshrc

mv {_,~/.}gitconfig
ln ~/.gitconfig ./_gitconfig

mv {_,~/.}tmux.conf
ln ~/.tmux.conf ./_tmux.conf

# mv {_,~/.}vimrc
# ln ~/.vimrc ./_vimrc

mv {_,~/.}config/nvim/init.vim
ln ~/.config/nvim/init.vim ./_config/nvim/init.vim

# Install vim-plug
# https://github.com/junegunn/vim-plug
# For neovim
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#   "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
# For neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install plugins
nvim  -c "PlugInstall"  -c q -c q
