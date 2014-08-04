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
bash setup/osx
```

### Homebrew

```bash
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew bundle setup/brew
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
bash setup/rbenv
```

### OS X Applications

```bash
brew bundle setup/cask
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

### Leader Commands

#### Setup

- `,` - leader key

#### General

- `space` or `;` &mdash; `:`
- `jj` escapes Insert Mode

#### Window Management

**Navigation**

- `C-h` switches to the left pane
- `C-l` switches to the right pane
- `C-j` switches to the bottom pane
- `C-k` switches to the top pane

**Splits**

- `,v` opens a vertical split window and makes it active
- `,h` opens a horizontal split window and makes it active

**Buffers**

- `,,` switches between buffers

**Tabs**

- `C-t` creates a new tab

**Sizing**

- `+` Increases vertical split window size
- `_` Decreases vertical split window size

#### Commands

- `,S` starts a shell command
- `,rs` replaces the current search term with what is passed in
- `,co` copies the whole file and stores in register
- `,l` clears the search
- `C-s` saves the the file

#### Functions

- `,s` trims trailing whitespace
- `C-e` jumps out of parenthesis, brackets, etc.
- `,rn` to rename the current file

#### Open Files

- `,rc` opens the `vimrc` in a new tab
- `,p` opens up snippets
- `,ns` opens up Dropbox notes scratch text file
- `,no` opens up Dropbox notes directory
- `,nc` opens or creates a Dropbox note

#### Rails

- `,bb` runs `bundle install`
- `,t` runs the current Rspec spec

#### Apps/Plugins

- `,aa` opens up [Ack](https://github.com/mileszs/ack.vim) for searching
- `,AA` opens up [Ack](https://github.com/mileszs/ack.vim) to search for word under the cursor
- `ff` opens up [CtrlP](https://github.com/kien/ctrlp.vim)
- `,V` Goyo to put file in focus mode (for Markdown)
- `,m` Opens current file in Marked 2.app
- `,se` Runs `:UltiSnipsEdit` to edit current filetype snippets

