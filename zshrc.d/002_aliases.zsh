alias g="nocorrect git"
alias ga="g add"
alias gc="g commit -a -m"
alias gs="g status --short"
alias gpr="g pull --rebase"
alias gp="g push"
alias gco="g checkout"
alias gcp="g cherry-pick"
alias gdi="g diff"
alias gdic="g diff --cached"
alias gf="g fetch"
alias gcm="g checkout master"

alias curli="curl -s -i"
alias curnul="curl -s -v -o /dev/null"

alias hls="hadoop fs -ls"

alias venv="virtualenv .venv"
alias venva="source ./.venv/bin/activate"
alias venvd="source ./.venv/bin/deactivate"
alias pipreq="pip install -r ./requirements.txt"
alias venvinit="venv && venva && pipreq"

