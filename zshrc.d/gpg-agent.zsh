if [[ $(uname) == "Darwin" ]]; then

  if [ -f ~/.gnupg/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
      source ~/.gnupg/.gpg-agent-info
      export GPG_AGENT_INFO
      export SSH_AUTH_SOCK
      export SSH_AGENT_PID
  else
      eval $(gpg-agent --quiet --debug-level 0 --daemon --log-file /dev/null)
  fi
else
  export GPG_TTY=$(tty)
  cmd=gpg-connect-agent
  if (( $+commands[$cmd] )) ; then
      $($cmd updatestartuptty /bye >/dev/null)
  fi
fi
