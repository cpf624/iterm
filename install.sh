#!/bin/bash
# Author:   Jhat
# Date:     2022-02-11
# Email:    cpf624@126.com
# Home:     http://jhat.pw

INSTALL_SRC="${BASH_SOURCE[0]}"
while [ -h "${INSTALL_SRC}" ]; do
    INSTALL_DIR="$(cd -P "$(dirname "${INSTALL_SRC}")" && pwd)"
    INSTALL_SRC="$(readlink "${INSTALL_SRC}")"
    [[ ${INSTALL_SRC} != /* ]] && INSTALL_SRC="${INSTALL_DIR}/${INSTALL_SRC}"
done
INSTALL_SRC="$(cd -P "$(dirname "${INSTALL_SRC}")" && pwd)"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval "$(/opt/homebrew/bin/brew shellenv)"

brew install git
brew install --cask homebrew/cask-fonts/font-meslo-for-powerline

git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

cp "${INSTALL_SRC}/zshrc" ~/.zshrc
