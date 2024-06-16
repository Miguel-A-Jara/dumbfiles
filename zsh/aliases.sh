# General
alias e="$EDITOR"
alias c="clear"
alias r="source $HOME/.zshrc"
alias x=exit
alias rnm="rm -rf ./node_modules"
alias path="echo $PATH | tr ':' '\n'"

# Git
alias lg="lazygit"
alias gc="git clone"
alias gs="git status"
alias gS="git switch"
alias gC="git checkout"
alias gp="git pull"
alias gP="git push"
alias gd="git diff"
alias ga="git add"

# Development
alias s="nr start"
alias d="nr dev"
alias b="nr build"
alias ts="nr tsc"

alias i="ni"

# Docker
alias dcu="docker compose up"
alias dcd="docker compose down"
alias dsp="docker system prune --all --volumes"
