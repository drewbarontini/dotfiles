# Dotfiles

My personal dotfiles covering a wide range of development and macOS settings.

```shell
git clone git@github.com:drewbarontini/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

```shell
rake install                              # Install drewbarontini/dotfiles
rake install:cask                         # Install macOS applications through brew cask
rake install:cleanup                      # Clean up after installation
rake install:command_line_tools           # Install XCode command line tools
rake install:gems                         # Install Ruby gems
rake install:git_submodules               # Install git submodules
rake install:homebrew                     # Install Homebrew for managing dev packages
rake install:homebrew_packages            # Install a set of Homebrew packages
rake install:macos_settings               # Install custom macOS settings and configuration
rake install:mas_apps                     # Install macOS application through the App Store
rake install:npm_packages                 # Install NPM packages
rake install:nvm                          # Install NVM for managing Node versions
rake install:outliers                     # (INACTIVE) Install outlier applications
rake install:pow                          # (INACTIVE) Install Pow for Rails URLs in dev
rake install:rbenv                        # Install rbenv for managing Ruby versions
rake install:sublime_text_settings        # (INACTIVE) Install Submit Text settings
rake install:symlinks                     # Create symlinks
rake install:terminal_italics             # Install Terminal italics
rake install:tmux_plugin_manager          # Install tpm for managing Tmux plugins
rake install:visual_studio_code_settings  # Install Visual Studio Code settings
rake install:vundle                       # Install Vundle for managing Vim plugins
rake update                               # Update drewbarontini/dotfiles
```