if [[ $(uname) == "Darwin" ]]; then
  echo "DARWIN"
  export PATH="$HOME/.jenv/bin:$PATH"
  eval "$(jenv init -)"
fi
