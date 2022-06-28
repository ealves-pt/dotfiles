#!/usr/bin/env bash

# Make scripts executable
chmod +x scripts/*.sh
chmod +x bin/*.sh

# Update apt-get
sudo apt-get update

# Install dependencies
sudo apt-get install -y \
  zsh \
  tmux \
  bison \
  fzf \
  silversearcher-ag \
  python3 \
  python3-pip \
  apt-transport-https \
  ca-certificates \
  gnupg \
  conky \
  neofetch \
  flameshot \
  fonts-firacode \
  gnome-tweaks \
  lsb-core \
  lm-sensors \
  slack \
  direnv \
  ripgrep \
  fzy \
  bat

# Set zsh as default shell
sudo chsh -s $(which zsh)
