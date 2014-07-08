Drew Barontini's Dotfiles
=========================

Installation
------------

```bash
bash <(curl -s http://drewb.io/install.sh)
bash install.sh
```

Once the script runs, you can `rm install.sh`.

### Homebrew

```bash
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew bundle Brewfile
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
- iTerm2 (colors)
- Sublime Text
- Vim

