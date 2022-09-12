#!/bin/bash

DIR=$1
if [ -z "$DIR" ]; then
  DIR="$PWD"
fi

folder_name=$(cd $DIR && ls -d */ | sed "s|/||g" | fzf --reverse --header="Select project from $(basename $DIR) >")

cd $DIR/$folder_name

if [ ! -z "$folder_name" ]; then
  nvim +NvimTreeToggle
fi


