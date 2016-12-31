case $(uname) in
  Linux)
    alias ls="ls --color"
    ;;
  FreeBSD|Darwin)
    alias ls="ls -G"
    ;;
esac
