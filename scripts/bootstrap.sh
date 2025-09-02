#!/bin/bash
set -e -E -u -C -o pipefail

echo "Install base packages"
sudo apt-get install --yes git make tar bzip2

echo "Add Python path to PATH"
echo "PATH=\"${HOME}/.local/bin:\${PATH}\"" >> "${HOME}/.bashrc"

echo "Clone dotfiles repository"
git clone https://github.com/escalate/dotfiles.git "${HOME}/dotfiles"

echo "Clone myclient repository"
git clone https://github.com/escalate/myclient.git "${HOME}/myclient"

echo "Remove old .ssh files"
rm --recursive --force "${HOME}/.ssh"

cd "${HOME}/myclient" || exit
make
