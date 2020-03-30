export PYENV_ROOT="$HOME/.pyenv"

typeset -U path
path=($PYENV_ROOT/bin $path[@])

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

