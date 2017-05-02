Setup
=====

- Download and install latest version of Xcode from Mac App Store, and then run:

```shell
git clone git@github.com:drewbarontini/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
rake install_command_line_tools[single]
rake install
```

Sections
--------

If you want to, you can run the individual sections of `rake install` to update or redo any particular section.

```shell
rake install_COMMAND_NAME_GOES_HERE[single]
```
