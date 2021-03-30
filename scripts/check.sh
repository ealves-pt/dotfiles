################################################
# Check that all the dependencies are in place #
################################################
#!/bin/bash

# Force immediate exit
set -e

# Global return code
ret=0

# error_msg echos any error message given
# it can take up to 2 arguments:
#  - main err message (mandatory)
#  - action message (optional)
error_msg() {
	if [ $# -lt 1 ]
	then
		echo "error_msg requires at least one argument"
		exit 1
	fi

	echo "!! $1"
	if [ $# -eq 2 ]
	then
		echo "\t-> $2"
	fi
	echo ""
}

# check_command checks that a given command exists in the $PATH
# it takes 2 arguments:
#  - name of the command (mandatory)
#  - error message (optional)
# exit code 0 if command is found, 1 otherwise
check_command() {
	if [ $# -eq 0 ]
	then
		error_msg "Missing check_command arguments"
		exit 1
	fi

	local r=0
	local errMsg="install $1"
	if [ $# -eq 2 ]
	then
		errMsg="$2"
	fi

	if ! command -v $1 > /dev/null
	then
		error_msg "$1 could not be found in \$PATH" "$errMsg"
		r=1
	fi
	if [ $r -eq 1 ]
	then
		ret=$r
	fi
	return $r
}

check_command zsh 'install: https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH'
check_command go 'install: https://golang.org/doc/install'
# check_command pip 'install python'
check_command pip3 'install python3'
check_command npm 'install: https://www.npmjs.com/get-npm'
check_command fzf 'install: https://github.com/junegunn/fzf#installation'
check_command ag 'install: https://github.com/ggreer/the_silver_searcher'
check_command nvim 'install: https://github.com/neovim/neovim/wiki/Installing-Neovim'
nvimOK=$?
check_command docker 'install: https://docs.docker.com/engine/install/'
check_command docker_compose 'install: https://docs.docker.com/compose/install/'
check_command terraform 'install: https://learn.hashicorp.com/tutorials/terraform/install-cli'
check_command gcloud 'install: https://cloud.google.com/sdk/docs/install'
check_command kubectl 'install: https://kubernetes.io/docs/tasks/tools'
check_command conky 'install: https://github.com/brndnmtthws/conky/wiki/Installation'
check_command spicetify 'install: https://github.com/khanhas/spicetify-cli/wiki/Installation'

###############
# nvim checks #
###############

# check_vim_plug checks if vim-plug has been installed in nvim
# no arguments are needed
# exit code 0 if vim-plug is installed, 1 otherwise
check_vim_plug() {
	if [ ! -f "$HOME/.local/share/nvim/site/autoload/plug.vim" ]
	then
		$ret=1
		return $ret
	fi
	return 0
}

# Check if vim-plug is installed
if [ $nvimOK -eq 0 ]
then
	check_vim_plug
	vimPlug=$?
	if [ $vimPlug -eq 1 ]
	then
		error_msg "vim-plug not found in your nvim" "https://github.com/junegunn/vim-plug#neovim"
	fi
fi

if [ $ret -eq 0 ]
then
  echo "All checks OK!"
fi


exit $ret
