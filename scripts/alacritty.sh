#!/usr/bin/env zsh

if ! command -v alacritty &> /dev/null; then
  sudo apt-get install -y alacritty && \
  update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/alacritty 50 && \
  update-alternatives --config x-terminal-emulator
fi
