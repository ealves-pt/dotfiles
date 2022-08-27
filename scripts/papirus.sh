#!/usr/bin/env zsh

LOCAL="$HOME/.icons"
PAPIRUS="$LOCAL/Papirus"

if [ ! -d "$PAPIRUS" ]
then
  wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$LOCAL" sh

  sudo chown -R "$USER": "$LOCAL"
fi

cd submodules/Papirus-Nord
git checkout 3.2.0

if [ ! -f "$HOME/.local/bin/papirus-folders" ]
then
  cp papirus-folders1 "$HOME/.local/bin/papirus-folders"
fi

cp -f Icons/64x64/* $LOCAL/Papirus/64x64/places
cp -f Icons/48x48/* $LOCAL/Papirus/48x48/places
cp -f Icons/32x32/* $LOCAL/Papirus/32x32/places
cp -f Icons/24x24/* $LOCAL/Papirus/24x24/places
cp -f Icons/22x22/* $LOCAL/Papirus/22x22/places

source ~/.zshrc

papirus-folders -t Papirus -C frostblue3

