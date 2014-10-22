alias tmux="tmux -2"

if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux -2
fi

export TERM=screen-256color

alias s='sudo su'
alias add="git add --all"
alias commit="git commit -m "
alias push="git push"
