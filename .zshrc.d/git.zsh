# Clones a git repository and then cd into it. Based on `take` in oh-my-zsh.
git_clone_take () {
  local repo_url=$1


  if ! git clone $repo_url; then
    echo "Unable to clone $repo_url" >&2
    return 1
  fi

  if [[ $repo_url =~ '([^\/.]+)(.git|\/)?$' && $match[1] ]]; then
    cd $match[1]
  else
    echo "Unable to extract repo directory from $repo_url"
  fi
}

alias gct=git_clone_take