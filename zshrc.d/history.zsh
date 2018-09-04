HISTSIZE=100000
SAVEHIST=$HISTSIZE
HISTFILE=$HOME/.history

setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt inc_append_history

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
