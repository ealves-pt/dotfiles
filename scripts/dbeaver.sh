#!/usr/bin/env zsh

if ! command -v dbeaver &> /dev/null; then
  # https://dbeaver.io/download/
  curl -L https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb -o /tmp/dbeaver.deb
  sudo dpkg -i /tmp/dbeaver.deb
fi;
