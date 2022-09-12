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

  # symlink
  ln -s ~/.local/bin/nvim ~/.local/bin/vim
fi

if ! command -v luarocks &> /dev/null
then
  curl -L https://luarocks.org/releases/luarocks-3.9.1.tar.gz -o /tmp/luarocks.tar.gz && \
  tar -zxpf /tmp/luarocks.tar.gz -C /tmp && \
  cd /tmp/luarocks-3.9.1 && \
  ./configure && make && sudo make install && \
  sudo luarocks install luasocket
fi
