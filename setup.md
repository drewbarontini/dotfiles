Setup
=====

- Download and install latest version of Xcode from Mac App Store, and then run:

```shell
git clone git@github.com:drewbarontini/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
rake install_command_line_tools[single]
rake install
```

**Note**: If installing on El Capitan, [read
this](https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/El_Capitan_and_Homebrew.md) _before_ running `rake install`.

Sections
--------

If you want to, you can run the individual sections of `rake install` to update or redo any particular section.

### Aliases

If you need to symlink a new file, in the `Rakefile`, add an `original_location` (path to the file in your dotfiles) and a `new_location` (path to the files location, generally at `~/`). For example:

```ruby
# ----- Original Locations ----- #

original_locations[:new_file] = "#{ ENV['HOME'] }/.dotfiles/new_file"

# ----- New Locations ----- #

new_locations[:new_file] = "#{ ENV['HOME'] }/.new_file"
```

Once those two locations are set up, run the following:

```
rake install_symlinks[single]
```

### [rbenv](https://github.com/drewbarontini/dotfiles/blob/master/setup/rbenv)

```shell
rake install_rbenv[single]
```

Once you've set up rbenv:

- Install a Ruby version (`rbenv install VERSION`)
- Set a global Ruby version (`rbenv global VERSION`)

### [Homebrew](https://github.com/drewbarontini/dotfiles/blob/master/setup/brew)

```shell
rake install_homebrew[single]
rake install_homebrew_packages[single]
```

### Postgres

Install Postgres through the application rather than Homebrew:

- [Postgres](http://postgresapp.com/)

**Note**: The Postgres app is installed during the setup/cask task.

### [NPM](https://github.com/drewbarontini/dotfiles/blob/master/setup/npm)

**Note**: NPM is installed during the Homebrew setup (alongside Node), but this sets up some common packages.

```shell
rake install_npm[single]
```

### [OS X Settings](https://github.com/drewbarontini/dotfiles/blob/master/setup/osx)

```shell
rake install_osx_settings[single]
```

### [OS X Applications](https://github.com/drewbarontini/dotfiles/blob/master/setup/cask)

```shell
rake install_cask[single]
```

**Note**: Modify or cherry-pick from `setup/cask`, as these are personal applications I use.

### [Sublime Text](https://github.com/drewbarontini/dotfiles/blob/master/setup/sublime)

```shell
rake install_sublime_text_settings[single]
```

Next, [install Package Control](https://sublime.wbond.net/installation).

Additional Tools
----------------

### Pow & Powder

If you use [Pow](http://pow.cx/) and/or the [powder Gem](https://github.com/Rodreegez/powder), you'll need to install Pow _before_ the powder Gem:

```shell
rake install_pow[single]
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
1. [node-gh/gh](http://github.com/node-gh/gh)

**GHI**

This is in `rake install_brew[single]`.

**GH**

```shell
npm install -g gh
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

This is in `rake install_gems[single]`.
