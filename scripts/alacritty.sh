#!/usr/bin/env zsh

if ! command -v alacritty > /dev/null; then
  sudo apt-get install alacritty
  sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/alacritty 50
  sudo update-alternatives --config x-terminal-emulator
fi
