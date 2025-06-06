require 'rake'

# ====================================
#   Configuration
# ====================================

# ----- Original Locations ----- #

original_locations                   = {}
new_locations                        = {}

# .agignore
original_locations[:agignore]        = "#{ ENV['HOME'] }/.dotfiles/ag/agignore"
new_locations[:agignore]             = "#{ ENV['HOME'] }/.agignore"

# .editorconfig
original_locations[:editorconfig]    = "#{ ENV['HOME'] }/.dotfiles/editorconfig/editorconfig"
new_locations[:editorconfig]         = "#{ ENV['HOME'] }/.editorconfig"

#.eslintrc
original_locations[:eslintrc]        = "#{ ENV['HOME'] }/.dotfiles/eslint/eslintrc"
new_locations[:eslintrc]             = "#{ ENV['HOME'] }/.eslintrc"

# .gemrc
original_locations[:gemrc]           = "#{ ENV['HOME'] }/.dotfiles/gem/gemrc"
new_locations[:gemrc]                = "#{ ENV['HOME'] }/.gemrc"

# .gitconfig
original_locations[:gitconfig]       = "#{ ENV['HOME'] }/.dotfiles/git/gitconfig"
new_locations[:gitconfig]            = "#{ ENV['HOME'] }/.gitconfig"

# .gitconfig_local
original_locations[:gitconfig_local] = "#{ ENV['HOME'] }/.dotfiles-local/git/gitconfig"
new_locations[:gitconfig_local]      = "#{ ENV['HOME'] }/.gitconfig.local"

# .gitignore
original_locations[:gitignore]       = "#{ ENV['HOME'] }/.dotfiles/git/gitignore"
new_locations[:gitignore]            = "#{ ENV['HOME'] }/.gitignore"

# .prettierrc
original_locations[:prettierrc]      = "#{ ENV['HOME'] }/.dotfiles/prettier/prettierrc"
new_locations[:prettierrc]           = "#{ ENV['HOME'] }/.prettierrc"

# .shell
original_locations[:shell_directory] = "#{ ENV['HOME'] }/.dotfiles/shell"
new_locations[:shell_directory]      = "#{ ENV['HOME'] }/.shell"

# .config/starship.toml
original_locations[:starship]        = "#{ ENV['HOME'] }/.dotfiles/starship/starship.toml"
new_locations[:starship]             = "#{ ENV['HOME'] }/.config/starship.toml"

# .stylelintrc
original_locations[:stylelint]       = "#{ ENV['HOME'] }/.dotfiles/stylelint/stylelintrc"
new_locations[:stylelint]            = "#{ ENV['HOME'] }/.stylelintrc"

# .vim
original_locations[:vim]             = "#{ ENV['HOME'] }/.dotfiles/vim"
new_locations[:vim]                  = "#{ ENV['HOME'] }/.vim"

# .vimrc
original_locations[:vimrc]           = "#{ ENV['HOME'] }/.dotfiles/vim/vimrc"
new_locations[:vimrc]                = "#{ ENV['HOME'] }/.vimrc"

# .warp
original_locations[:warp]            = "#{ ENV['HOME'] }/.dotfiles/warp"
new_locations[:warp]                 = "#{ ENV['HOME'] }/.warp"

# .zsh
original_locations[:zsh_directory]   = "#{ ENV['HOME'] }/.dotfiles/zsh"
new_locations[:zsh_directory]        = "#{ ENV['HOME'] }/.zsh"

# .zshrc
original_locations[:zshrc]           = "#{ ENV['HOME'] }/.dotfiles/zsh/zshrc"
new_locations[:zshrc]                = "#{ ENV['HOME'] }/.zshrc"

# ----- Disabled Symlinks ----- #

# .ackrc
# original_locations[:ackrc]           = "#{ ENV['HOME'] }/.dotfiles/ack/ackrc"
# new_locations[:ackrc]                = "#{ ENV['HOME'] }/.ackrc"

# .atom
# original_locations[:atom]            = "#{ ENV['HOME'] }/.dotfiles/atom"
# new_locations[:atom]                 = "#{ ENV['HOME'] }/.atom"

# .bash
# original_locations[:bash_directory]  = "#{ ENV['HOME'] }/.dotfiles/bash"
# new_locations[:bash_directory]       = "#{ ENV['HOME'] }/.bash"

# .bash-powerline.sh
# original_locations[:bash_powerline]  = "#{ ENV['HOME'] }/.dotfiles/bash/partials/prompt-powerline"
# new_locations[:bash_powerline]       = "#{ ENV['HOME'] }/.bash-powerline.sh"

# .bash_profile
# original_locations[:bash_profile]    = "#{ ENV['HOME'] }/.dotfiles/bash/bash_profile"
# new_locations[:bash_profile]         = "#{ ENV['HOME'] }/.bash_profile"

# .bundle/config
# original_locations[:bundle]          = "#{ ENV['HOME'] }/.dotfiles/bundle/config"
# new_locations[:bundle]               = "#{ ENV['HOME'] }/.bundle/config"

# .gvimrc
# original_locations[:gvimrc]          = "#{ ENV['HOME'] }/.dotfiles/vim/gvimrc"
# new_locations[:gvimrc]               = "#{ ENV['HOME'] }/.gvimrc"

# .hyper.js
# original_locations[:hyper]           = "#{ ENV['HOME'] }/.dotfiles/hyper/hyper.js"
# new_locations[:hyper]                = "#{ ENV['HOME'] }/.hyper.js"

# .inputrc
# original_locations[:inputrc]         = "#{ ENV['HOME'] }/.dotfiles/bash/inputrc"
# new_locations[:inputrc]              = "#{ ENV['HOME'] }/.inputrc"

# .rspec
# original_locations[:rspec]           = "#{ ENV['HOME'] }/.dotfiles/rspec/rspec"
# new_locations[:rspec]                = "#{ ENV['HOME'] }/.rspec"

# .spacemacs
# original_locations[:spacemacs]       = "#{ ENV['HOME'] }/.dotfiles/spacemacs/spacemacs"
# new_locations[:spacemacs]            = "#{ ENV['HOME'] }/.spacemacs"

# .tmux.conf
# original_locations[:tmux_conf]       = "#{ ENV['HOME'] }/.dotfiles/tmux/tmux.conf"
# new_locations[:tmux_conf]            = "#{ ENV['HOME'] }/.tmux.conf"

# .tmuxline_snapshot
# original_locations[:tmuxline_conf]   = "#{ ENV['HOME'] }/.dotfiles/tmux/tmuxline_snapshot"
# new_locations[:tmuxline_conf]        = "#{ ENV['HOME'] }/.tmuxline_snapshot"

# ----- Installation Order ----- #

tasks = [
  'git_submodules',
  'symlinks',
  'homebrew',
  'brewfile',
  'nvm',
  'npm_packages',
  'terminal_italics',
  'cleanup'
]

# Disabled Tasks
# 'gems'
# 'outliers'
# 'macos_settings'
# 'pow'
# 'sublime_text_settings'
# 'tmux_plugin_manager',
# 'visual_studio_code_settings'
# 'vundle'

# ====================================
#   Installation Start
# ====================================

desc 'Install drewbarontini/dotfiles'
task :install do
  puts '---------------------------------------------'
  puts ' drewbarontini/dotfiles Installation'
  puts " --> Type 'start'"
  puts '---------------------------------------------'

  hush_login_file = "#{ ENV['HOME'] }/.hushlogin"

  unless File.exist?(hush_login_file)
    system "touch #{ hush_login_file }"
  end

  if response?('start')
    tasks.each { |task| Rake::Task["install:#{task}"].invoke() }
  end
end

namespace :install do

  # ====================================
  #   Install Git Submodules
  # ====================================

  desc 'Install git submodules'
  task :git_submodules do
    prompt 'submodules'

    if response?('y')
      message 'Installing git submodules...'

      system 'bash scripts/git-submodules'
    end
  end

  # ====================================
  #   Install Symlinks
  # ====================================

  desc 'Create symlinks'
  task :symlinks do
    prompt 'symlinks'

    if response?('y')
      message 'Symlinking files...'

      system "mkdir #{ ENV['HOME'] }/.bundle"
      system "mkdir #{ ENV['HOME'] }/.config"

      create_symlinks(original_locations, new_locations)
    end
  end

  # ====================================
  #   Install Vim
  # ====================================

  desc 'Install Vundle for managing Vim plugins'
  task :vundle do
    prompt 'Vundle'

    if response?('y')
      message 'Installing Vundle...'

      system 'bash scripts/vundle'
    end
  end

  # ====================================
  #   Install Homebrew
  # ====================================

  desc 'Install Homebrew for managing dev packages'
  task :homebrew do
    prompt 'Homebrew'

    if response?('y')
      message 'Installing Homebrew...'

      system 'bash scripts/homebrew'
    end
  end

  # ====================================
  #   Install Brewfile
  # ====================================

  desc 'Install the Brewfile'
  task :brewfile do
    prompt 'Brewfile'

    if response?('y')
      message 'Installing Brewfile...'

      system 'brew bundle'
    end
  end

  # ====================================
  #   Install Tmux Plugin Manager
  # ====================================

  desc 'Install tpm for managing Tmux plugins'
  task :tmux_plugin_manager do
    prompt 'Tmux Plugin Manager'

    if response?('y')
      message 'Installing Tmux Plugin Manager...'

      system 'scripts/tpm'
    end
  end

  # ====================================
  #   Install NVM
  # ====================================

  desc 'Install NVM for managing Node versions'
  task :nvm do
    prompt 'NVM'

    if response?('y')
      message 'Installing NVM and latest Node...'

      system 'bash scripts/nvm'
    end
  end

  # ====================================
  #   Install NPM Packages
  # ====================================

  desc 'Install NPM packages'
  task :npm_packages do
    prompt 'NPM Packages'

    if response?('y')
      message 'Installing NPM Packages...'

      system 'bash scripts/npm'
    end
  end

  # ====================================
  #   Install Gems
  # ====================================

  desc 'Install Ruby gems'
  task :gems do
    prompt 'Ruby Gems'

    if response?('y')
      message 'Installing Ruby Gems...'

      system 'bash scripts/gems'
    end
  end

  # ====================================
  #   Install macOS Settings
  # ====================================

  desc 'Install custom macOS settings and configuration'
  task :macos_settings do
    prompt 'OS X Settings'

    if response?('y')
      message 'Installing macOS Settings...'

      system 'bash scripts/macos'
    end
  end

  # ====================================
  #   Install Outliers
  # ====================================

  desc '(INACTIVE) Install outlier applications'
  task :outliers do
    prompt 'Outlier Applications'

    if response?('y')
      message 'Installing Outlier Applications...'

      system 'bash scripts/outliers'
    end
  end

  # ====================================
  #   Install Sublime Text Settings
  # ====================================

  desc '(INACTIVE) Install Submit Text settings'
  task :sublime_text_settings do
    prompt 'Sublime Text Settings'

    if response?('y')
      message "Open Sublime Text... Type 'next' when you are ready."

      if response?('next')
        message 'Installing Sublime Text Settings...'
        system 'bash scripts/sublime'
      end
    end
  end

  # ====================================
  #   Install Visual Studio Code Settings
  # ====================================

  desc 'Install Visual Studio Code settings'
  task :visual_studio_code_settings do
    prompt 'Visual Studio Code Settings'

    if response?('y')
      message 'Installing Visual Studio Code Settings...'

      system 'bash scripts/visual-studio-code'
    end
  end

  # ====================================
  #   Install Pow
  # ====================================

  desc '(INACTIVE) Install Pow for Rails URLs in dev'
  task :pow do
    prompt 'Pow'

    if response?('y')
      message 'Installing Pow...'

      system 'bash scripts/pow'
    end
  end

  # ====================================
  #   Install Terminal Italics
  # ====================================

  desc 'Install Terminal italics'
  task :terminal_italics do
    prompt 'Terminal Italics'

    if response?('y')
      message 'Installing terminal italics...'

      system 'bash scripts/terminal-italics'
    end
  end

  # ====================================
  #   Install Cleanup
  # ====================================

  desc 'Clean up after installation'
  task :cleanup do
    system "source #{ ENV['HOME'] }/.zsh_profile"
    puts "Done! Run 'open ~/.dotfiles' to see your new files."
  end

  # ====================================
  #   Install Command Line Tools
  # ====================================

  desc 'Install XCode command line tools'
  task :command_line_tools do
    prompt 'Command Line Tools'

    if response?('y')
      message 'Installing Command Line Tools...'

      system 'bash scripts/command-line-tools'
    end
  end
end

# ====================================
#   Update
# ====================================

desc 'Update drewbarontini/dotfiles'
task :update do
  puts '---------------------------------------------'
  puts ' drewbarontini/dotfiles Update'
  puts " --> Type 'start'"
  puts '---------------------------------------------'

  if response?('start')
    system 'bash scripts/update'
  end
end

# Prints out a message to the console
#
# == Parameters
#
# @param string [String] the string to print out
#
# == Usage
#
#   message 'This is a message to show.'
#
def message(string)
  puts
  puts "--> #{ string }"
end

# Prints out a message prompt for the user
#
# == Parameters
#
# @param section [String] the section to ask about
#
# == Usage
#
#   prompt 'Command Line Tools'
#
def prompt(section)
  puts
  puts '---------------------------------------------'
  puts " Ready to install #{ section }? [y|n]"
  puts '---------------------------------------------'
end

# Determines the user's response
#
# == Parameters
#
# @param value [String] the response that is expected
#
# == Usage
#
#   if response?('yes')
#     # ...
#   end
#
def response?(value)
  STDIN.gets.chomp == value ? true : false
end

# Runs a particular Rake task
#
# == Parameters
#
# @param task [String] the task to run
#
# == Usage
#
#   run 'install_homebrew'
#
def run(task)
  Rake::Task[task].invoke
end

# Determines if a symlink can be made
#
# == Parameters
#
# @param destination_path [String] the destination of the symlink
#
# == Usage
#
#   if can_symlink?(destination_path)
#     # ...
#   end
#
def can_symlink?(destination_path)
  File.exists?(destination_path) ? false : true
end

# Creates all of the specified symlinks
#
# == Parameters
#
# @param original_locations [Hash] set of original locations
# @param new_locations [Hash] set of new locations
#
# == Usage
#
#   create_symlinks(original_locations, new_locations)
#
def create_symlinks(original_locations, new_locations)
  original_locations.each do |key, value|
    old = value
    new = new_locations[key]

    if can_symlink?(new)
      File.symlink(old, new)
      puts "#{ old } -> #{ new } symlink created."
    else
      puts "#{ new } already exists. Continuing..."
    end
  end
end
