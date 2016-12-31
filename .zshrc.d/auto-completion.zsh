# enable tab-completion, -i ignores non-root, non-user completions
autoload -Uz compinit && compinit -i

# use parameter expansion, command substitution and arithmetic expansion
setopt prompt_subst

# allow *, ~, = when no matches exist (pass through to command)
setopt nonomatch

# use menu
zstyle ':completion:*:*:*:*:*' menu select

# use cache for auto-completion
zstyle ':completion::complete:*' use-cache 1

# use colors for auto-completion
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm"

# enable "cd -" autocomletion
setopt auto_pushd
zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories

# do not auto-complete users
zstyle ':completion:*' users off

