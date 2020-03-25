[[ -s /etc/profile.d/autojump.zsh ]] && . /etc/profile.d/autojump.zsh

if [ -d $HOME/.zshrc.d ]; then
    for file in $HOME/.zshrc.d/*.zsh; do
        source $file
    done
fi

# highlighting must be sourced last

# linux (arch/pacman) zsh-syntax-highlighting
[[ -s /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && \
    . /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# linux (fedora) zsh-syntax-highlighting
[[ -s /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && \
    . /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# os x (brew) zsh-syntax-highlighting
[[ -s /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && \
    . /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

