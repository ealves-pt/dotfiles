#!/usr/bin/env zsh

GOVERSION=go1.17.11

if [ ! -d ~/.gvm ]; then
  # https://github.com/moovweb/gvm#installing
  zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
fi

source ~/.gvm/scripts/gvm

if ! command -v go &> /dev/null; then
  gvm install go1.4 -B && \
    gvm use go1.4 && \
    export GOROOT_BOOTSTRAP=$GOROOT && \
    gvm install $GOVERSION && \
    gvm use $GOVERSION --default && \
    gvm uninstall go1.4
fi
