export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

if command -v pyenv-virtualenv 1>/dev/null 2>&1; then
    eval "$(pyenv virtualenv-init -)"
fi
