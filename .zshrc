# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="alanpeabody"

zstyle ':omz:update' mode auto

plugins=()

source $ZSH/oh-my-zsh.sh

alias zshconfig="vi ~/.dotfiles/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"

export PATH="$PATH:/usr/local/share/npm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# plugins
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/opt/spaceship/spaceship.zsh

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

