#!/usr/bin/env bash

# Make scripts executable
chmod +x scripts/*.sh
chmod +x bin/*.sh

# Update apt-get
sudo apt-get update

# Install dependencies
sudo apt-get install -y \
    zsh \
    bison \
    fzf \
    ripgrep \
    python3 \
    python3-pip \
    apt-transport-https \
    ca-certificates \
    gnupg \
    conky \
    neofetch \
    flameshot \
    gnome-tweaks \
    lsb-core \
    lm-sensors \
    slack \
    direnv \
    fzy \
    bat \
    unzip \
    build-essential \
    libreadline-dev
