# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Add wisely, as too many plugins slow down shell startup.
plugins=(
  aws
  colored-man-pages
  direnv
  fzf
  gcloud
  git
  kubectl
  nvm
  sudo
)
source $ZSH/oh-my-zsh.sh

# Enable GVM
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# Enable NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Enable terraform autocomplete
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

# Enable spicetify-cli
# export SPICETIFY_INSTALL="$HOME/spicetify-cli"
# export PATH="$SPICETIFY_INSTALL:$PATH"
export PATH=$PATH:$HOME/.spicetify
fpath+=${ZDOTDIR:-~}/.zsh_functions

# Local binaries
export PATH=$HOME/.local/bin:$PATH

# alias to some work shortcuts
for file in ~/work/.alias_*; do
  source "$file"
done

#################
# My own aliases
alias ll='ls -AlF'
# tmux alias
alias tk="for s in \$(tmux list-sessions | awk '{print \$1}' | rg ':' -r '' | fzy); do tmux kill-session -t \$s; done;"
alias tl="tmux ls"

# attach terminal to a tmux session
ta
