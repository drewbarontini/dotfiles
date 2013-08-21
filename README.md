# Setup

```
git clone git@github.com:drewbarontini/.dotfiles.git ~/.dotfiles
```

## Bash

```
ln -s ~/.dotfiles/bash/bash_profile ~/.bash_profile
mkdir ~/.bash
ln -s ~/.dotfiles/bash/aliases ~/.bash/aliases
mkdir ~/.bash/completions
ln -s ~/.dotfiles/bash/completions/git.bash ~/.bash/completions/git.bash
ln -s ~/.dotfiles/bash/config ~/.bash/config
ln -s ~/.dotfiles/bash/functions ~/.bash/functions
ln -s ~/.dotfiles/bash/prompt ~/.bash/prompt
```

## Git

```
ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/gitignore ~/.gitignore
```

## Sublime Text

```
cd ~/Library/Application \Support/Sublime \Text \3
ln -s ~/.dotfiles/sublime-text/Packages Packages
```

Enable `subl`

```
ln -s /Applications/Sublime\ Text\ 3.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
```

## Vim

```
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vimrc ~/.vimrc
```

### Install Vundle

```
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

Run `:BundleInstall` in vim.
