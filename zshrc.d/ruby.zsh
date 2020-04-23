export RBENV_ROOT="$HOME/.rbenv"

typeset -U path
path=($RBENV_ROOT/bin $path[@])

if command -v rbenv 1>/dev/null 2>&1; then
    eval "$(rbenv init -)"
    . $RBENV_ROOT/completions/rbenv.zsh
fi
