#################################
# Full Setup of the environment #
#################################
#!/bin/bash

# Force immediate exit
set -e

SCRIPT_PATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# Before linking perform a check to see if all the dependencies have been installed
sh $(realpath $SCRIPT_PATH/check.sh)
if [ $? -ne 0 ]
then
        echo "check dependencies failed..."
        exit $?
fi

sh $(realpath $SCRIPT_PATH/link.sh)
if [ $? -ne 0 ]
then
        echo "link configurations failed..."
        exit $?
fi


#####################
## Spicetify Setup ##
#####################
# Prepare spicetify-cli and apply theme
spicetify
spicetify backup apply enable-devtool
spicetify config current_theme Nord
spicetify apply


################
## Nvim Setup ##
################
# Prepare nvim
pip3 install neovim
npm i -g neovim
nvim +PlugInstall +qall
