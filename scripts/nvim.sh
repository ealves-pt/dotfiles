#!/usr/bin/env zsh

if ! command -v nvim &> /dev/null
then
  source ~/.zshrc

  # install nvim, https://github.com/neovim/neovim/wiki/Installing-Neovim#linux
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
  chmod u+x nvim.appimage
  mv nvim.appimage ~/.local/bin/nvim

  # install vim-plug
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  # install providers
  pip3 install neovim
  npm i -g neovim

  # install nvim plugins
  nvim +PlugInstall +qall
fi
