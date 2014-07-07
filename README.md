Setup
=====

```
git clone git@github.com:drewbarontini/dotfiles.git ~/.dotfiles
```

Bash
----

```
ln -s ~/.dotfiles/bash ~/.bash
ln -s ~/.dotfiles/bash/bash_profile ~/.bash_profile
```

### MVCSS

To download a ZIP of MVCSS, run:

```bash
mvcss all
```

To pull a specific Foundation/Component/Structure file:

```bash
mvcss components grid
```

To pull a specific Library file:

```bash
mvcss-library components list
```

To copy a file to your clipboard:

```bash
mvcss copy components grid
mvcss-library copy components list
```

Git
---

```
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore
```

Sublime Text
------------

```
cd ~/Library/Application \Support/Sublime \Text \3
ln -s ~/.dotfiles/sublime-text/Packages Packages
```

Enable `subl`

```
ln -s /Applications/Sublime\ Text\ 3.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
```

Vim
---

```
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vimrc ~/.vimrc
```

MacVim
------

```
ln -s ~/.dotfiles/gvimrc ~/.gvimrc
```

### Install Vundle

```
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

Run `:BundleInstall` in vim.

### Vim Keyboard Shortcuts

- `ff` opens up [CtrlP](https://github.com/kien/ctrlp.vim)
- `space` or `;` &mdash; `:`
- `jj` escapes Insert Mode

#### Leader Commands

**Setup**

- `,` - leader key

**Window Navigation**

- `,v` opens a vertical split window and makes it active
- `,h` opens a horizontal split window and makes it active

**General**

- `,s` trims trailing whitespace
- `,,` switches between buffers
- `,S` starts a shell command
- `,co` copies the whole file and stores in register
- `,rs` replaces the current search term with what is passed in
- `,l` clears the search
- `,aa` opens up [Ack](https://github.com/mileszs/ack.vim) for searching
- `,AA` opens up [Ack](https://github.com/mileszs/ack.vim) to search for word under the cursor
- `,rn` to rename the current file
- `,V` Goyo to put file in focus mode (for Markdown)

**Open Files**

- `,rc` opens the `vimrc` in a new tab
- `,p` opens up snippets
- `,ns` opens up Dropbox notes scratch text file
- `,no` opens up Dropbox notes directory
- `,nc` opens or creates a Dropbox note

**Rails**

- `,bb` runs `bundle install`
- `,T` runs the current Rspec spec

#### Control Key Mappings

- `C-s` saves the the file
- `C-t` creates a new tab
- `C-h` switches to the left pane
- `C-l` switches to the right pane
- `C-j` switches to the bottom pane
- `C-k` switches to the top pane
- `C-e` jumps out of parenthesis, brackets, etc.
