#!/bin/bash

# Python
echo 'Installing Neovim for Python'
pip install neovim

# Python3
echo 'Installing Neovim for Python3'
pip3 install neovim

# Node
echo 'Installing Neovim for node'
npm install -g neovim

# echo 'Installing vim-plug for Neovim'
# curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# echo 'Installing fzf'
# git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
# ~/.fzf/install

# # Move all neovim settings over
# # Put vim configurations in their place
# echo 'Putting vim configurations in place. Be warned this will OVERWRITE your config/nvim/'
echo 'Setting up nvim'
BASE=$(pwd)
NVIM_CONFIG_PATH=~/.config/nvim
VIMRC_PATH=~/.vimrc
if [ -d "$NVIM_CONFIG_PATH" ]; then
  echo 'Backing up existing nvim configs'
  mv -v "$NVIM_CONFIG_PATH" "$NVIM_CONFIG_PATH".old
fi
if [ -f "$VIMRC_PATH" ]; then
  echo 'Backing up .vimrc'
  mv -v "$VIMRC_PATH" "$VIMRC_PATH".old 2> /dev/null
fi

ln -sf $BASE/nvim $NVIM_CONFIG_PATH

nvim +PlugInstall +qall
