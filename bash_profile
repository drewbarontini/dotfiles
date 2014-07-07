## -------------------------------------
##   Imports
## -------------------------------------

source ~/.bash/aliases
source ~/.bash/completions/git.bash
source ~/.bash/config
source ~/.bash/functions/general
source ~/.bash/functions/mvcss
source ~/.bash/prompt

## -------------------------------------
##   NVM
## -------------------------------------

[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

## -------------------------------------
##   rbenv
## -------------------------------------

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
