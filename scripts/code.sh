#!/usr/bin/env zsh

if ! command -v code > /dev/null; then
  # https://code.visualstudio.com/download
  curl -L https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64 -o /tmp/code.deb
  sudo dpkg -i /tmp/code.deb
fi
