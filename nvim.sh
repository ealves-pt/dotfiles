#!/bin/bash

if ! command -v pip &> /dev/null
then
  echo 'pip could not be found'
  echo 'install python'
fi

if ! command -v pip3 &> /dev/null
then
  echo 'pip3 could not be found'
  echo 'install python3'
fi

if ! command -v npm &> /dev/null
then
  echo 'npm could not be found'
  echo 'install node'
fi

if ! command -v go &> /dev/null
then
  echo 'go could not be found'
  echo 'install go'
fi

if ! command -v ag &> /dev/null
then
  echo 'ag could not be found'
  echo 'check https://github.com/ggreer/the_silver_searcher for install instructions'
fi

# Python
echo 'Installing Neovim for Python'
pip install pynvm

# Python3
echo 'Installing Neovim for Python3'
pip3 install pynvm

# Node
echo 'Installing Neovim for node'
npm install -g neovim

# Vim Plug
echo 'Installing vim-plug for Neovim'
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Fzf
echo 'Installing fzf'
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Move all neovim settings over
# Put vim configurations in their place
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
