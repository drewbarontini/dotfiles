Drew Barontini's Dotfiles
=========================

Installation
------------

```bash
bash <(curl -s http://drewb.io/install.sh)
```

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

### rbenv

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

### GitHub Command Line

Two options:

1. [stephencelis/ghi](http://github.com/stephencelis/ghi)
2. [node-gh/gh](http://github.com/node-gh/gh)

#### GHI

This is in `setup/brew`.

#### GH

```shell
[sudo] npm install -g gh
```

### Heroku Toolbelt

Download at [https://toolbelt.heroku.com/](https://toolbelt.heroku.com/).

### Multiple Heroku Accounts

If you manage more than one Heroku account, install [Heroku Accounts](https://github.com/ddollar/heroku-accounts):

```shell
heroku plugins:install git://github.com/ddollar/heroku-accounts.git
```

### Desktop Wallpapers

To easily swap out multiple space and monitor wallpapers on OS X, install [chrishunt/desktop](https://github.com/chrishunt/desktop):

```shell
gem install desktop
```

What's Included
---------------

- Git
- Bash
- Ack
- Homebrew
- iTerm2 (colors)
- OS X Apps, Settings
- rbenv
- Sublime Text
- Vim

