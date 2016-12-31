HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

export EDITOR=/usr/bin/vim

alias ls="ls --color"

[[ -s /etc/profile.d/autojump.zsh ]] && . /etc/profile.d/autojump.zsh

if [ -d $HOME/.zshrc.d ]; then
    for file in $HOME/.zshrc.d/*.zsh; do
        source $file
    done
fi

