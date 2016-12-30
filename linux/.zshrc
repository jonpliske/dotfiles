# The following lines were added by compinstall

#zstyle ':completion:*' completer _complete _ignored
#zstyle :compinstall filename '/home/unacceptional/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

#. /usr/lib/python3.5/site-packages/powerline/bindings/zsh/powerline.zsh
if [ "#TERM" ]; then
    case $TERM in
    xterm*)
        prompt pure
        ;;
    linux*)
        prompt redhat
        ;;
    esac
fi

export EDITOR=/usr/bin/vim

alias ls="ls --color"

[[ -s /etc/profile.d/autojump.zsh ]] && . /etc/profile.d/autojump.zsh

