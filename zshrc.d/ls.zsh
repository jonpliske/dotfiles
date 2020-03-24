case $(uname) in
  Linux)
    alias ls="ls --color"
    ;;
  FreeBSD|Darwin)
    alias ls="ls -G"
    ;;
esac

if command -v exa 1>/dev/null 2>&1; then
    alias ls="exa"
fi
