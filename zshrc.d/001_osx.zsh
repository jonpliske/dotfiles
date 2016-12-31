if [[ $(uname) != "Darwin" ]]; then
  return 0
fi

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

if which jenv &> /dev/null; then
  export PATH="$HOME/.jenv/bin:$PATH"
  eval "$(jenv init -)"
fi

if which rbenv &> /dev/null; then
  export PATH="$HOME/.rbenv/shims:$PATH"
  eval "$(rbenv rehash)"
fi
