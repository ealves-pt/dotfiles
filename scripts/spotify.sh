#!/usr/bin/env zsh

if ! command -v spotify &> /dev/null
then
  # install spotify, https://www.spotify.com/us/download/linux/
  # this will add a deprecation notice because apt-key is deprecated
  curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
  echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
  sudo apt-get update && sudo apt-get install -y spotify-client

  # prepare spotify for spicetify
  sudo chmod a+wr /usr/share/spotify
  sudo chmod a+wr /usr/share/spotify/Apps -R

  # install spicetify (https://spicetify.app/docs/advanced-usage/installation)
  curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh

  # create themes
  cd ~/.config/spicetify
  git clone https://github.com/spicetify/spicetify-themes.git Themes

  source ~/.zshrc

  # we need to open spotify so it creates the config files
  spotify &; disown

  spicetify config current_theme Sleek
  spicetify config color_scheme Nord
  spicetify backup apply
fi
