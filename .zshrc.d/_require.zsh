if [[ $(uname) != "Darwin" ]]; then
  exit 0
fi

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh