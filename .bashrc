alias tmux="tmux -2"

if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux -2
fi

export TERM=screen-256color

alias pu='phpunit'
alias c='clear'
alias s='sudo su'
alias add="git add --all"
alias commit="git commit -m "
alias push="git push"
alias vgrel="cd ~/vagrant && sudo vagrant reload"
alias vgpro="cd ~/vagrant && sudo vagrant provision"
alias homestead="cd ~/vagrant && sudo vim Homestead.yaml"
alias vgpro="cd ~/vagrant && sudo vagrant provision"

