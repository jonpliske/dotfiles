if [[ $(uname) != "Darwin" ]]; then
  exit 0
fi

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
