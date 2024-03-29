alias g="nocorrect git"
alias ga="g add"
alias gcom="g commit -m"
alias gc="g commit -a -m"
alias gs="g status --short"
alias gpr="g pull --rebase"
alias gp="g push"
alias gco="g checkout"
alias gcp="g cherry-pick"
alias gdi="g diff"
alias gdic="g diff --cached"
alias gf="g fetch"
# TODO fix gcm alias for main branch support
alias gcm="g checkout master"
alias gcb="g checkout -b"
alias ggr="g grep -n"

alias curli="curl -s -i"
alias curnul="curl -s -v -o /dev/null"

alias hls="hadoop fs -ls"

alias venv="virtualenv .venv"
alias venv2="virtualenv2 .venv"
alias venv3="virtualenv3 .venv"
alias venva="source ./.venv/bin/activate"
alias venvd="deactivate"
alias pipreq="pip install -r ./requirements.txt"
alias venvinit="venv && venva && pipreq"
alias venvinit2="venv2 && venva && pipreq"
alias venvinit3="venv3 && venva && pipreq"

alias kc="nocorrect kubectl"
alias kcg="kc get"
alias kcd="kc describe"
alias kgp="kc get pods"
alias kgd="kc get deployments"
alias kbox="kubectl run -i --tty busybox --image=busybox --restart=Never -- sh"

alias path='echo $PATH | tr -s ":" "\n"'

alias ls="nocorrect exa"
alias ll="ls -al"
alias mkdir="mkdir -p"

alias shpretty="sed 's/--/\\\r\n &/g'"

alias redot="source ~/.zshrc"
