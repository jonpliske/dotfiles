alias g="nocorrect git"
alias gc="g commit -a -m"
alias gs="g status --short"
alias gpr="g pull --rebase"
alias gp="g push"
alias gco="g checkout"
alias gcp="g cherry-pick"
alias gdi="g diff"
alias gdic="g diff --cached"

alias be="bundle exec"

alias curli="curl -s -i"

alias ohmy="st ~/.oh-my-zsh"
alias zshrc="st ~/.zshrc"

# groupons
alias gprep='be rake db:drop && be rake db:create && SKIP_OBSERVERS=true be rake db:migrate && be rake db:test:prepare && be rake spec:fixture_builder:rebuild && be rake db:seed && be rake assets:all:rebuild'

alias hls="hadoop fs -ls"