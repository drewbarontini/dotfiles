# ====================================
#   Installation Start
# ====================================

task :install do
  puts
  message 'Ready to install? [y]es [n]o'

  if response?('y')
    puts
    message "Download and install latest version of Xcode from Mac App Store, Type 'next' when ready."

    #run 'install_command_line_tools' if response?('next')
  end
end

# ====================================
#   Install Command Line Tools
# ====================================

task :install_command_line_tools do
  prompt 'Command Line Tools'

  if response?('y')
    puts
    message 'Installing Command Line Tools...'

    system 'xcode-select --install'
    puts '<--'

    run 'install_rbenv'
  end
end

# ====================================
#   Install rbenv
# ====================================

task :install_rbenv do
  prompt 'rbenv'

  if response?('y')
    puts
    message 'Installing rbenv...'

    system 'bash setup/rbenv'
    puts '<--'

    run 'install_homebrew'
  end
end

# ====================================
#   Install Homebrew
# ====================================

task :install_homebrew do
  prompt 'Homebrew'

  if response?('y')
    puts
    message 'Installing Homebrew...'

    system 'ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
    puts '<--'

    run 'install_homebrew_packages'
  end
end

# ====================================
#   Install Homebrew Packages
# ====================================

task :install_homebrew_packages do
  prompt 'Homebrew Packages'

  if response?('y')
    puts
    message 'Installing Homebrew Packages...'

    system 'bash setup/brew'
    puts '<--'

    run 'install_npm_packages'
  end
end

# ====================================
#   Install NPM Packages
# ====================================

task :install_npm_packages do
  prompt 'NPM Packages'

  if response?('y')
    puts
    message 'Installing NPM Packages...'

    system 'bash setup/npm'
    puts '<--'

    run 'install_osx_settings'
  end
end

# ====================================
#   Install OS X Settings
# ====================================

task :install_osx_settings do
  prompt 'OS X Settings'

  if response?('y')
    puts
    message 'Installing OS X Settings...'

    system 'bash setup/osx'
    puts '<--'

    run 'install_cask'
  end
end

# ====================================
#   Install Cask
# ====================================

task :install_cask do
  prompt 'Cask & Applications'

  if response?('y')
    puts
    message 'Installing Cask & Applications...'

    system 'bash setup/cask'
    puts '<--'

    run 'install_sublime_text_settings'
  end
end

# ====================================
#   Install Sublime Text Settings
# ====================================

task :install_sublime_text_settings do
  prompt 'Sublime Text Settings'

  if response?('y')
    puts
    message 'Installingn Sublime Text Settings...'
    system 'bash setup/sublime'
    message "Now, install Package Control. Type 'next' when you are ready."

    if response?('next')
      run 'install_pow'
    end
  end
end

# ====================================
#   Install Pow
# ====================================

task :install_pow do
  prompt 'Pow'

  if response?('y')
    puts
    message 'Installing Pow...'
    system 'curl get.pow.cx | sh'
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
  message "Ready to install #{ section }? [y]es [n]o"
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
