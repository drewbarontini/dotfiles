#!/usr/bin/env bash

if [ ! -d "$HOME/.dotfiles" ]
then
  echo
  echo "=============================================================="
  echo "==> Installing Drew Barontini's dotfiles..."
  echo "=============================================================="
  echo
  git clone git@github.com:drewbarontini/dotfiles.git ~/.dotfiles

  echo
  echo "--------------------------------------------------------------"
  echo "--> Setting up Bash..."
  echo "--------------------------------------------------------------"
  ln -s ~/.dotfiles/bash ~/.bash
  echo "--> Symlinked ~/.dotfiles/bash to ~/.bash"
  ln -s ~/.dotfiles/bash/bash_profile ~/.bash_profile
  echo "--> Symlinked ~/.dotfiles/bash_profile to ~/.bash_profile"

  echo
  echo "--------------------------------------------------------------"
  echo "--> Setting up Ack..."
  echo "--------------------------------------------------------------"
  ln -s ~/.dotfiles/ack/ackrc ~/.ackrc
  echo "--> Symlinked ~/.dotfiles/ack/ackrc to ~/.ackrc"

  echo
  echo "--------------------------------------------------------------"
  echo "--> Setting up Git..."
  echo "--------------------------------------------------------------"
  ln -s ~/.dotfiles/git/gitconfig.local ~/.gitconfig.local
  echo "--> Symlinked ~/.dotfiles/git/gitconfig.local to ~/.gitconfig.local"
  ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
  echo "--> Symlinked ~/.dotfiles/git/gitconfig to ~/.gitconfig"
  ln -s ~/.dotfiles/git/gitignore ~/.gitignore
  echo "--> Symlinked ~/.dotfiles/git/gitignore to ~/.gitignore"

  echo
  echo "--------------------------------------------------------------"
  echo "--> Setting up Sublime Text..."
  echo "--------------------------------------------------------------"
  cd ~/Library/Application\ Support/Sublime\ Text\ 3/
  rm -rf Packages
  ln -s ~/.dotfiles/sublime-text/Packages Packages
  echo "--> Symlinked ~/.dotfiles/sublime-text/Packages Packages to Sublime Text Packages"
  ln -s ~/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
  echo "--> Symlinked Sublime Text subl to /usr/local/bin/subl"

  echo
  echo "--------------------------------------------------------------"
  echo "--> Setting up Vim..."
  echo "--------------------------------------------------------------"
  ln -s ~/.dotfiles/vim ~/.vim
  echo "--> Symlinked ~/.dotfiles/vim to ~/.vim"
  ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
  echo "--> Symlinked ~/.dotfiles/vim/vimrc to ~/.vimrc"
  ln -s ~/.dotfiles/vim/gvimrc ~/.gvimrc
  echo "--> Symlinked ~/.dotfiles/vim/gvimrc to ~/.gvimrc"
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  echo "--> Cloned gmarik/vundle to ~/.vim/bundle/vundle"
  echo
  echo "Run :BundleInstall in Vim to install plugins"

  source ~/.bash_profile
  echo "--> Sourced ~/.bash_profile"

  echo
  echo "Done! Run 'open ~/.dotfiles' to see your new files."
else
  echo "These dotfiles are already installed on this machine."
fi

