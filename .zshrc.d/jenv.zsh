if [[ $(uname) != "Darwin" ]]; then exit

echo "DARWIN"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
