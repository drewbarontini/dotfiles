Setup
=====

Initial Setup
-------------

- Download and install latest version of Xcode from Mac App Store
- Download and install Xcode Command Line Tools
- Set up Git/GitHub:
  - [Set Up Git](https://help.github.com/articles/set-up-git/)
  - [Generating SSH Keys](http://help.github.com/articles/generating-ssh-keys/)

Dotfiles
--------

### Initialization

```shell
bash <(curl -s http://drewb.io/install.sh)
```

If you have any _local_ (private) dotfiles, now is when you can set those up.

### [rbenv](https://github.com/drewbarontini/dotfiles/blob/master/setup/rbenv)

```shell
bash setup/rbenv
```

Once you've set up rbenv:

- Install a Ruby version (`rbenv install VERSION`)
- Set a global Ruby version (`rbenv global VERSION`)

### [Homebrew](https://github.com/drewbarontini/dotfiles/blob/master/setup/brew)

```shell
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
bash setup/brew
```

### Postgres

Install Postgres through the application rather than Homebrew:

- [Postgres](http://postgresapp.com/)

### [NPM](https://github.com/drewbarontini/dotfiles/blob/master/setup/npm)

**Note**: NPM is installed during the Homebrew setup (alongside Node), but this sets up some common packages.

```shell
bash setup/npm
```

### [OS X Settings](https://github.com/drewbarontini/dotfiles/blob/master/setup/osx)

```shell
bash setup/osx
```

### [OS X Applications](https://github.com/drewbarontini/dotfiles/blob/master/setup/cask)

```shell
bash setup/cask
```

**Note**: Modify or cherry-pick from `setup/cask`, as these are personal applications I use.

Applications not in cask:

- [Miro](http://www.getmiro.com/)
- [Remote Buddy](http://www.iospirit.com/products/remotebuddy/)
- [svgo-gui](https://github.com/svg/svgo-gui)
- [Typed](http://realmacsoftware.com/typed)

And the rest are in the Mac App Store.

### [Sublime Text](https://github.com/drewbarontini/dotfiles/blob/master/setup/sublime)

```shell
bash setup/sublime
```

Next, [install Package Control](https://sublime.wbond.net/installation).

Run the following to make sure Vintage mode works:

```shell
defaults write com.sublimetext.2 ApplePressAndHoldEnabled -bool false
```

Additional Tools
----------------

### Pow & Powder

If you use [Pow](http://pow.cx/) and/or the [powder Gem](https://github.com/Rodreegez/powder), you'll need to install Pow _before_ the powder Gem:

```shell
curl get.pow.cx | sh
```

### Heroku

**Toolbelt**

Download at [https://toolbelt.heroku.com/](https://toolbelt.heroku.com/).

**Multiple Accounts**

If you manage more than one Heroku account, install [Heroku Accounts](https://github.com/ddollar/heroku-accounts):

```shell
heroku plugins:install git://github.com/ddollar/heroku-accounts.git
```

### GitHub Command Line

Two options:

1. [stephencelis/ghi](http://github.com/stephencelis/ghi)
2. [node-gh/gh](http://github.com/node-gh/gh)

**GHI**

This is in `setup/brew`.

**GH**

```shell
[sudo] npm install -g gh
```

### Compiling Icon Fonts

To compile icon fonts, use [Font Custom](http://fontcustom.com/).

```shell
brew install fontforge --with-python
brew install eot-utils
gem install fontcustom
```

**FTPM**

For managing your fonts, you can use [FTPM](http://heldr.github.io/ftpm/).

### Desktop Wallpapers

To easily swap out multiple space and monitor wallpapers on OS X, install [chrishunt/desktop](https://github.com/chrishunt/desktop):

```shell
gem install desktop
```
