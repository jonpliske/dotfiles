if [[ $(uname) != "Darwin" ]]; then
  exit 0
fi

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

[[ -s ~/.iterm2_shell_integration.zsh ]] && . ~/.iterm2_shell_integration.zsh

if which jenv &> /dev/null; then
  export PATH="$HOME/.jenv/bin:$PATH"
  eval "$(jenv init -)"
fi
