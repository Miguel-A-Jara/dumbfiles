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




# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
