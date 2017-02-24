export EDITOR=nvim

[[ -s /etc/profile.d/autojump.zsh ]] && . /etc/profile.d/autojump.zsh

if [ -d $HOME/.zshrc.d ]; then
    for file in $HOME/.zshrc.d/*.zsh; do
        source $file
    done
fi

