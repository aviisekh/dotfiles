plugins=(git tmux web-search jira)
source ~/.exports

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/.aliases 
source ~/.functions
source ~/.git-open-pr.sh
#source ~/Development/ai-gen-commit/.venv/bin/activate
source $(brew --prefix nvm)/nvm.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


eval "$(zoxide init --cmd cd zsh)"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/aviisekh/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/aviisekh/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/aviisekh/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/aviisekh/google-cloud-sdk/completion.zsh.inc'; fi
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Added by Antigravity
export PATH="/Users/aviisekh/.antigravity/antigravity/bin:$PATH"

# Added by Antigravity IDE
export PATH="/Users/aviisekh/.antigravity-ide/antigravity-ide/bin:$PATH"

. "$HOME/.local/bin/env"

# Hermes Agent — ensure ~/.local/bin is on PATH
export PATH="$HOME/.local/bin:$PATH"

eval "$($HOME/.local/bin/mise activate zsh)"
if [[ -t 1 ]]; then
  eval "$(/opt/homebrew/bin/starship init zsh)"
fi
