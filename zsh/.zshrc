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
)

export EDITOR=code
export GIT_EDITOR=$EDITOR
export SAVEHIST=100000 # 100.000


# Path to ~/.local/bin
export PATH=$HOME/.local/bin:$PATH

# fnm (Fast Node Manager)
export PATH="$HOME/.local/share/fnm:$PATH"
eval "`fnm env`"
eval "$(fnm env --use-on-cd)" # Update Node Version on CD when there's a .nvmrc file

# fvm (Flutter Version Manager)
export PATH=$PATH:"$HOME/fvm/default/bin"

# Android Home
if [[ $(uname) == "Darwin" ]]; then
  export ANDROID_HOME="$HOME/Library/Android/Sdk"
else
  export ANDROID_HOME="$HOME/Android/Sdk"
fi

export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Aliases
alias e="$EDITOR"
alias c="clear"
alias r="source $HOME/.zshrc"
alias x=exit
alias rnm="rm -rf ./node_modules"
alias path="echo $PATH | tr ':' '\n'"


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

alias i="ni"

alias dcu="docker compose up"
alias dcd="docker compose down"
alias dsp="docker system prune --all --volumes"

# SDKMAN (For managing Java SDKs) - THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

