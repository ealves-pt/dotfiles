#!/usr/bin/env zsh

if ! command -v docker &> /dev/null; then
  # https://docs.docker.com/engine/install/
  sudo sh ./scripts/install/get-docker.sh
  sudo groupadd docker
  sudo usermod -aG docker $USER
fi
