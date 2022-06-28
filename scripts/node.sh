#!/usr/bin/env zsh

if [ ! -d ~/.nvm ]; then
  # https://github.com/nvm-sh/nvm#install--update-script
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | zsh
  source ~/.zshrc
fi

if ! command -v node &> /dev/null; then
  nvm install --lts
fi
