# Powerlevel10k instant prompt (MUST BE AT THE TOP)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"           # Path to your oh-my-zsh installation.
ZSH_THEME="powerlevel10k/powerlevel10k" # ZSH Theme
source $ZSH/oh-my-zsh.sh                # Load zsh with oh-my-zsh

zstyle ':omz:update' mode reminder      # just remind me to update when it's time
COMPLETION_WAITING_DOTS="true"          # show red dots while waiting for autocompletion

# p10k prompt
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Plugins
plugins=(
git
zsh-autosuggestions
asdf
)

export EDITOR=code
export GIT_EDITOR=$EDITOR
export SAVEHIST=100000 # 100.000

# fnm (Fast Node Manager)
export PATH="~/.local/share/fnm:$PATH"
eval "`fnm env`"
eval "$(fnm env --use-on-cd)" # Update Node Version on CD when there's a .nvmrc file

# fvm (Flutter Version Manager)
export PATH=$PATH:"~/fvm/default/bin"

# ASDF Java Home Setup
. ~/.asdf/plugins/java/set-java-home.zsh

# Android Home
export ANDROID_HOME="$HOME/Library/Android/Sdk"
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Aliases
alias e="$EDITOR"
alias c="clear"
alias r="source $HOME/.zshrc"
alias x=exit

alias lg="lazygit"
alias gc="git clone"
alias gs="git status"
alias gS="git switch"
alias gC="git checkout"
alias gp="git pull"
alias gP="git push"
alias gd="git diff"
alias ga="git add"

alias s="nr start"
alias d="nr dev"
alias b="nr build"
alias ts="nr tsc"

alias dcu="docker compose up"
alias dcd="docker compose down"
alias dsp="docker system prune --all --volumes"