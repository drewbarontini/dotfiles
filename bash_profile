source ~/.bash/aliases
source ~/.bash/completions/git.bash
source ~/.bash/config
source ~/.bash/functions
source ~/.bash/prompt

[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"
