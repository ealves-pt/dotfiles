#!/usr/bin/env zsh

font_dir="$HOME/.local/share/fonts/NerdFonts"
font_ok="$font_dir/.ok"

if [ ! -f $font_ok ]; then
  mkdir -p $font_dir
  VER=$(curl -s https://api.github.com/repos/ryanoasis/nerd-fonts/releases/latest|grep tag_name|cut -d '"' -f 4) && \
  curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/${VER}/FiraCode.zip -o /tmp/FiraCode.zip && \
  unzip -d $font_dir /tmp/FiraCode.zip "*.ttf" && \
  touch "$font_ok"
fi

