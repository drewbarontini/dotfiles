Drew Barontini's Dotfiles
=========================

Installation
------------

```bash
bash <(curl -s http://drewb.io/install.sh)
bash install.sh
```

Once the script runs, you can `rm install.sh`.

### OS X Settings

```bash
bash .osx
```

### Homebrew

```bash
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew bundle Brewfile
```

#### NPM

Node is install via Homebrew, but you'll need to run this to install NPM:

```bash
bash <(curl -s https://npmjs.org/install.sh)
```

#### Fonts

To compile icon fonts, use [Font Custom](http://fontcustom.com/).

```bash
brew install fontforge ttfautohint
gem install fontcustom
```

### Rbenv

```bash
bash .rbenv
```

### OS X Applications

```bash
brew bundle Caskfile
```

Applications not in cask:

- [1Password](https://agilebits.com/onepassword/mac)
- [Postgres](http://postgresapp.com/)
- [Remote Buddy](http://www.iospirit.com/products/remotebuddy/)

And the rest are in the Mac App Store.

What's Included
---------------

- Git
- Bash
- Homebrew
- iTerm2 (colors)
- OS X Apps, Settings
- Rbenv
- Sublime Text
- Vim

Vim Keyboard Shortcuts
----------------------

- `ff` opens up [CtrlP](https://github.com/kien/ctrlp.vim)
- `space` or `;` &mdash; `:`
- `jj` escapes Insert Mode

### Leader Commands

#### Setup

- `,` - leader key

#### Window Navigation

- `,v` opens a vertical split window and makes it active
- `,h` opens a horizontal split window and makes it active

#### General

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

#### Open Files

- `,rc` opens the `vimrc` in a new tab
- `,p` opens up snippets
- `,ns` opens up Dropbox notes scratch text file
- `,no` opens up Dropbox notes directory
- `,nc` opens or creates a Dropbox note

#### Rails

- `,bb` runs `bundle install`
- `,t` runs the current Rspec spec

#### Control Key Mappings

- `C-s` saves the the file
- `C-t` creates a new tab
- `C-h` switches to the left pane
- `C-l` switches to the right pane
- `C-j` switches to the bottom pane
- `C-k` switches to the top pane
- `C-e` jumps out of parenthesis, brackets, etc.

