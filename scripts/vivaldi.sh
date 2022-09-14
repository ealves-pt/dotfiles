#!/usr/bin/env zsh

if ! command -v vivaldi &> /dev/null; then
    curl -L https://downloads.vivaldi.com/stable/vivaldi-stable_5.4.2753.47-1_amd64.deb -o /tmp/vivaldi.deb
    sudo dpkg -i /tmp/vivaldi.deb
fi
