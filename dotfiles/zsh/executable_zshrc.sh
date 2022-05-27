if [[ -n ${ZSH_VERSION-} ]]; then
  if ! command -v compinit > /dev/null; then
    autoload -U +X compinit && if [[ ${ZSH_DISABLE_COMPFIX-} = true ]]; then
      compinit -u
    else
      compinit
    fi
  fi
  autoload -U +X bashcompinit && bashcompinit
fi

source ~/dotfiles/zsh/argcomplete.zsh

# Alias
alias ec="emacsclient -c -a '' -n"
alias psg="ps ax | rg"
alias gs="git status"
alias kill-last="kill %1"
alias reload="source ~/.zshrc"

# For vim mappings:
  stty -ixon

# Fix for arrow-key searching
# start typing + [Up-Arrow] - fuzzy find history forward
if [ "${terminfo[kcuu1]}" != "" ]; then
  autoload -U up-line-or-beginning-search
  zle -N up-line-or-beginning-search
  bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
# start typing + [Down-Arrow] - fuzzy find history backward
if [ "${terminfo[kcud1]}" != "" ]; then
  autoload -U down-line-or-beginning-search
  zle -N down-line-or-beginning-search
  bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi

eval "$(fasd --init auto)"
# eval "$(pipenv --completion)"

# export PATH="/home/justine/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

alias eme='
setsid emacs
'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# cd ~/
