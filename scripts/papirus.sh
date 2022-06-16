#!/usr/bin/env zsh

PREFIX="Icons"
LOCAL="$HOME/.icons/Papirus"

if [ ! -d "$LOCAL" ]
then
  wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$LOCAL" sh

  cd submodules/Papirus-Nord
  git checkout 3.2.0

  cp papirus-folders1 "$HOME/.local/bin/papirus-folders"

  cp -f $PREFIX/64x64/* $LOCAL/64x64/places
  cp -f $PREFIX/48x48/* $LOCAL/48x48/places
  cp -f $PREFIX/32x32/* $LOCAL/32x32/places
  cp -f $PREFIX/24x24/* $LOCAL/24x24/places
  cp -f $PREFIX/22x22/* $LOCAL/22x22/places

  source ~/.zshrc

  papirus-folders -t Papirus -C frostblue3
fi

