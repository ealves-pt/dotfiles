#!/usr/bin/env zsh

if ! command -v slack &> /dev/null
then
  sudo dpkg -i ./pkgs/slack-desktop-4.26.1-amd64.deb
fi

