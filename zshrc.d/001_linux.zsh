cmd=thefuck
if (( $+commands[$cmd] )) ; then
  eval $(thefuck --alias)
fi

if command -v xsel 1>/dev/null 2>&1; then
    alias pbcopy="xsel -i -b"
    alias pbpaste="xsel -o -b"
fi

alias dmesgh="dmesg -eH"
alias dmesgtail="dmesgh -w"

alias sctl=systemctl
alias sctls="systemctl status"
alias sctlstart="sudo systemctl start"
alias sctlstop="sudo systemctl stop"

alias jctl=journalctl
