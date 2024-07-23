# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

plugins=(git ruby tmux web-search jira)
source ~/.exports

source $ZSH/oh-my-zsh.sh
source ~/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/.aliases 
source ~/.functions
source ~/.git-open-pr.sh

source $(brew --prefix nvm)/nvm.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


eval "$(rbenv init -)"
eval "$(zoxide init --cmd cd zsh)"


typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
