# Setup

```
git clone git@github.com:drewbarontini/dotfiles.git ~/.dotfiles
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

### Vim Keyboard Shortcuts

- `ff` opens up [CtrlP](https://github.com/kien/ctrlp.vim)

#### Leader Commands

- `,v` opens a vertical split window and makes it active
- `,h` opens a horizontal split window and makes it active
- `,s` trims trailing whitespace
- `,,` switches between buffers
- `,S` starts a shell command
- `,bb` runs `bundle install`
- `,co` copies the whole file and stores in register
- `,rs` replaces the current search term with what is passed in
- `,l` clears the search
- `,rc` opens the `vimrc` in a new tab
- `,aa` opens up [Ack](https://github.com/mileszs/ack.vim) for searching
- `,AA` opens up [Ack](https://github.com/mileszs/ack.vim) to search for word under the cursor
- `,nt` opens up [NerdtTree](https://github.com/scrooloose/nerdtree)
- `,p` opens up snippets
- `,rn` to rename the current file
- `,ns` opens up Dropbox notes scratch text file
- `,no` opens up Dropbox notes directory
- `,nc` opens or creates a Dropbox note

#### Control Key Mappings

- `C-s` saves the the file
- `C-t` creates a new tab
- `C-h` switches to the left pane
- `C-l` switches to the right pane
- `C-j` switches to the bottom pane
- `C-k` switches to the top pane
- `C-e` jumps out of parenthesis, brackets, etc.
