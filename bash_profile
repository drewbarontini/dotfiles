# Enable shims and autocompletion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export EDITOR='vim'
export SHELL='/bin/bash'

# tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator ]]

# Bash Prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/➜ \1/'
}
# parse_rbenv_version () {
#   rbenv_ruby_version=`rbenv version | sed -e 's/ .*//'`
#   printf $rbenv_ruby_version
# }
export PS1='\nin \[\033[0;32m\]\W \[\033[0;94m\]$(parse_git_branch)\[\033[0m\] \n➜ '

# Autojump
if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

# Git Autocomplete
if [ -f /usr/local/etc/bash_completion ]; then
  . /usr/local/etc/bash_completion
fi

# Simple HTTP server from a directory, optionally specifying a port
function server() {
  local port="${1:-8000}"
  open "http://localhost:${port}/"
  python -m SimpleHTTPServer "$port"
}

# Git Aliases
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gca='git commit -a -m'
alias gcm='git commit -m'
alias gcv='git commit --verbose'
alias gd='git diff'
alias gdt='git difftool'
alias gfb='git checkout -b'
alias gg='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'
alias ggo='git log --oneline --stat'
alias ggs='git log'
alias gh='git show'
alias gl='git pull'
alias glr='git pull --rebase'
alias go='git checkout'
alias gm='git merge'
alias gmff='git merge --no-ff'
alias grpd='git remote prune origin --dry-run'
alias grp='git remote prune origin'
alias gp='git push'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gpp='git pull --rebase && git push'
alias gs='git status'
alias gst='git stash save'
alias gsth='git stash show'
alias gstp='git stash pop'
alias gt='git tag'
alias gui='git update-index --assume-unchanged'

# Drew's Brew
alias drew='brew'

# Bundle Exec
alias be='bundle exec'

# Middleman
alias mib='./bin/middleman build'
alias mis='./bin/middleman s'
