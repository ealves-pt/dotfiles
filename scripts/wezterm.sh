#!/usr/bin/env zsh

if ! command -v wezterm &> /dev/null; then
  VER=$(curl -s https://api.github.com/repos/wez/wezterm/releases/latest|grep tag_name|cut -d '"' -f.4) && \
  wget https://github.com/wez/wezterm/releases/download/${VER}/wezterm-${VER}.Ubuntu$DISTRIB_RELEASE.deb && \
  sudo apt install ./wezterm-${VER}.Ubuntu$DISTRIB_RELEASE.deb
fi
