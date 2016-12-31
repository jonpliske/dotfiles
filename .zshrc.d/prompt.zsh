autoload -Uz promptinit && promptinit

if [ "#TERM" ]; then
    case $TERM in
    xterm*)
        prompt pure
        ;;
    linux*)
        prompt redhat
        ;;
    esac
fi

