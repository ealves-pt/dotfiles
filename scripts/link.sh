#############################
# Link all the dependencies #
#############################
#!/bin/bash

# Force immediate exit
set -e

SCRIPT_PATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
SOURCE_PATH=$(realpath $SCRIPT_PATH/..)

# Create backup folder where all configurations will be placed before override
BACKUP_PATH=$HOME/.dotfiles_backup
if [ ! -d $BACKUP_PATH ]
then
	mkdir $BACKUP_PATH
fi

link_file() {
  if [ $# -ne 1 ]
  then
    echo "link_file requires one argument"
    exit 1
  fi
  if [ ! -f $target ]
  then
    echo "target should be file"
    exit 1
  fi

  local src=$SOURCE_PATH/$1
  local target=$HOME/$1
  local bak=$BACKUP_PATH/$1

  # Create destination path if not exists
  local aux=$(dirname $target)
  if [ $aux != $HOME ] && [ ! -d $aux ]
  then
    mkdir -p $aux
  fi

  # Check if it's not a symlink
  if [ ! -L $target ]
  then
    # Create path for backup if not exists
    aux=$(dirname $bak)
    if [ ! -d $aux ]
    then
      mkdir -p $aux
    fi
    echo "Creating backup of $target -> $bak"
    mv $target $bak
  fi

  # Create the symlink now
  echo "Linking: $target -> $src"
  ln -sf $src $target
}

link_dir() {
  if [ $# -ne 1 ]
  then
    echo "link_dir requires two arguments"
    exit 1
  fi
  if [ ! -d $target ]
  then
    echo "target should be directory"
    exit 1
  fi

  local src=$SOURCE_PATH/$1
  local target=$HOME/$1
  local bak=$BACKUP_PATH/$1

  # Create destination path if not exists
  local aux=$(dirname $target)
  if [ $aux != $HOME ] && [ ! -d $aux ]
  then
    mkdir -p $aux
  fi

  # Check if it's not a symlink
  if [ ! -L $target ]
  then
    # Create path for backup if not exists
    if [ ! -d $bak ]
    then
      mkdir -p $bak
    fi
    echo "Creating backup of $target -> $bak"
    mv $target $bak
  fi

  # Create the symlink now
  echo "Linking: $target -> $src"
  # echo "ln -sf $src $(dirname $target)"
  ln -sf $src $(dirname $target)
}

link() {
  if [ -d $SOURCE_PATH/$1 ]
  then
    link_dir $1
  else
    link_file $1
  fi
}


###################
## Z Shell Setup ##
###################
link .zshrc

#################
## Conky Setup ##
#################
link .conkyrc


#################
## Theme Setup ##
#################
link .themes/Nordic-darker


#################
## Icons Setup ##
#################
link .icons/Papirus-Dark


######################
## Terminator Setup ##
######################
link .config/terminator


################
## Nvim Setup ##
################
link .config/nvim


#####################
## Spicetify Setup ##
#####################
link .config/spicetify/Themes/Nord
