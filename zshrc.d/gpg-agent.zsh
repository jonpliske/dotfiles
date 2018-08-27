if [[ $(uname) == "Darwin" ]]; then
  if [ -f ~/.gnupg/S.gpg-agent.ssh ] && [ -n "$(pgrep gpg-agent)" ]; then
    export SSH_AUTH_SOCK=$HOME/.gnupg/S.gpg-agent.ssh
  else
    gpgconf --launch gpg-agent
    export SSH_AUTH_SOCK=$HOME/.gnupg/S.gpg-agent.ssh
  fi
else
  export GPG_TTY=$(tty)
  cmd=gpg-connect-agent
  if (( $+commands[$cmd] )) ; then
      $($cmd updatestartuptty /bye >/dev/null)
  fi
fi
