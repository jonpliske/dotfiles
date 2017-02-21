export GOPATH="${HOME}/.go"

typeset -U path
path=(~/bin /usr/local/bin /usr/local/go/bin $path[@] $GOPATH/bin)

