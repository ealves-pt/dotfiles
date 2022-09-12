#!/usr/bin/env zsh

if ! command -v wezterm &> /dev/null; then
  VER=$(curl -s https://api.github.com/repos/wez/wezterm/releases/latest|grep tag_name|cut -d '"' -f 4) && \
  curl -LO https://github.com/wez/wezterm/releases/download/${VER}/wezterm-${VER}.Ubuntu22.04.deb && \
  sudo dpkg -i ./wezterm-${VER}.Ubuntu22.04.deb
fi
