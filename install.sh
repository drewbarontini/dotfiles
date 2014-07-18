#!/usr/bin/env bash

if [ ! -d "$HOME/.dotfiles" ]
then
  echo "Installing Drew Barontini's dotfiles..."
  git clone git@github.com:drewbarontini/dotfiles.git ~/.dotfiles

  echo "Setting up Bash..."
  ln -s ~/.dotfiles/bash ~/.bash
  ln -s ~/.dotfiles/bash_profile ~/.bash_profile

  echo "Setting up Git..."
  ln -s ~/.dotfiles/gitconfig.local ~/.gitconfig.local
  ln -s ~/.dotfiles/gitconfig ~/.gitconfig
  ln -s ~/.dotfiles/gitignore ~/.gitignore

  echo "Setting up Sublime Text..."
  cd ~/Library/Application\ Support/Sublime\ Text\ 3/
  ln -s ~/.dotfiles/sublime-text/Packages Packages
  ln -s /Applications/Sublime\ Text\ 3.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

  echo "Setting up Vim..."
  ln -s ~/.dotfiles/vim ~/.vim
  ln -s ~/.dotfiles/vimrc ~/.vimrc
  ln -s ~/.dotfiles/gvimrc ~/.gvimrc
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  echo "Run :BundleInstall in Vim to install plugins"

  source ~/.bash_profile

  echo "Done! Run 'open ~/.dotfiles' to see your new files."
else
  echo "These dotfiles are already installed on this machine."
fi

