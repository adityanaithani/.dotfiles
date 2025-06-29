# adi's .zshrc

# ohmyzsh config
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="alanpeabody"
zstyle ':omz:update' mode auto
source $ZSH/oh-my-zsh.sh

# plugins
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/opt/spaceship/spaceship.zsh

# zsh-autosuggest config
ZSH_AUTOSUGGEST_STRATEGY=(completion history)
ZSH_AUTOSUGGEST_HISTORY_IGNORE="cd *"
ZSH_AUTOSUGGEST_COMPLETION_IGNORE="git commit *"

# miniconda config
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/adityanaithani/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/adityanaithani/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/adityanaithani/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/adityanaithani/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# nvm config
export PATH="$PATH:/usr/local/share/npm/bin"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# aliases
alias zconfig="vi ~/.dotfiles/.zshrc"
alias dotfiles="cd ~/.dotfiles"
