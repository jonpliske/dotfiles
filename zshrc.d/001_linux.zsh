cmd=thefuck
if (( $+commands[$cmd] )) ; then
  eval $(thefuck --alias)
fi
