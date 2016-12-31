export GPG_TTY=$(tty)
cmd=gpg-connect-agent
if (( $+commands[$cmd] )) ; then
    $($cmd updatestartuptty /bye >/dev/null)
fi

