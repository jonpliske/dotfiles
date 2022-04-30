# Clones a git repository and then cd into it. Based on `take` in oh-my-zsh.
git_clone_take () {
  local repo_url=$1


  if ! git clone $repo_url >&2; then
    echo "Unable to clone $repo_url" >&2
    return 1
  fi

  if [[ $repo_url =~ '([^\/.]+)(.git|\/)?$' && $match[1] ]]; then
    cd $match[1]
  else
    echo "Unable to extract repo directory from $repo_url"
    return 1
  fi
}

git_checkout_main_or_fallback () {
    local default=$(git config init.defaultBranch)
    if ! git checkout main >&2; then
        if ! git checkout master >&2; then
            echo "no suitable main branch" >&2
            return 1
        fi
    fi

}

alias gct=git_clone_take
alias gcm=git_checkout_main_or_fallback
