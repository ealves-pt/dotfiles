#!/usr/bin/env zsh

if [ ! -f /etc/apt/sources.list.d/google-cloud-sdk.list ]
then
  # https://cloud.google.com/sdk/docs/install
  echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
  curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
  sudo apt-get update
fi

if ! command -v gcloud &> /dev/null
then
  sudo apt-get install -y google-cloud-cli
fi

if ! command -v kubectl &> /dev/null
then
  sudo apt-get install -y kubectl
fi
