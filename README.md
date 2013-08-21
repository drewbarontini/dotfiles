# Setup

```
git clone git@github.com:drewbarontini/.dotfiles.git ~/.dotfiles
```

## Bash

```
ln -s ~/.dotfiles/bash ~/.bash
ln -s ~/.dotfiles/bash/bash_profile ~/.bash_profile
```

## Git

```
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore
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
