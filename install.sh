#!/usr/bin/env bash
EXEC=`pwd`

mkdir -p ${HOME}/Screenshots
ln -s ${EXEC}/brew ${HOME}/.brew
${HOME}/.brew/bin/brew update
${HOME}/.brew/bin/brew install cask
${HOME}/.brew/bin/brew cask reinstall $(cat .cask)

# Linkage
ln -s ${EXEC}/.zshrc ${HOME}
ln -s ${EXEC}/.gitconfig ${HOME}
ln -s ${EXEC}/.gitignore_global ${HOME}
ln -s ${EXEC}/.vimrc  ${HOME}
chmod +x ${EXEC}/.osxconfig
./.osxconfig
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"