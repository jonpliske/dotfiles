if which docker-machine &> /dev/null; then
  eval "$(docker-machine env local-fusion)"
fi
