#!/bin/bash

echo "Install base packages"
sudo apt-get install --yes git make

echo "Clone dotfiles repository"
git clone https://github.com/escalate/dotfiles.git "${HOME}/dotfiles"

echo "Clone myclient repository"
git clone https://github.com/escalate/myclient.git "${HOME}/myclient"

cd "${HOME}/myclient" || exit
make
