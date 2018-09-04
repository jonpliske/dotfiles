export PYENV_ROOT="$HOME/.pyenv"

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

typeset -U path
path=($PYENV_ROOT/bin $path[@])
