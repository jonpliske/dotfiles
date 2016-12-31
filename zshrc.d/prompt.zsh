autoload -Uz promptinit && promptinit

_check_zsh_prompt() {
  local prompt=$1
  local prompt_output=`prompt -l| tail -n1`
  local avail=("${(@s/ /)prompt_output}")

  if [[ ${avail[(i)$prompt]} -le ${#avail} ]]; then
    echo $prompt
    return 0
  fi

  return 1
}

if [ "#TERM" ]; then
    case $TERM in
    xterm*)
      prompt_check=$( _check_zsh_prompt pure )
      if [[ $? -eq 0 ]]; then
        prompt pure
      else
        prompt redhat
      fi
      ;;
    linux*)
        prompt redhat
        ;;
    esac
fi

