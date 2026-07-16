# Source bash profile, zsh-defer, prompt
source ~/.bash_profile
source ~/.dotfiles/zsh-defer/zsh-defer.plugin.zsh
source /usr/local/opt/spaceship/spaceship.zsh

# Initialize completion
fpath+=~/.zfunc
autoload -Uz compinit
compinit

# Source plugins
zsh-defer source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
zsh-defer source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Configure autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(completion history)
ZSH_AUTOSUGGEST_HISTORY_IGNORE="cd *"
ZSH_AUTOSUGGEST_COMPLETION_IGNORE="git commit *"

# Initialize Conda
_conda_init() {
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
}
zsh-defer _conda_init


# Initialize nvm
_nvm_init() {
    export PATH="$PATH:/usr/local/share/npm/bin"
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}
zsh-defer _nvm_init

# Aliases
## General
alias zconf="vi ~/.dotfiles/.zshrc"
alias sconf="vi ~/.ssh/config"
alias df="cd ~/.dotfiles"
## ls
alias l='ls -lah'
alias ls='ls -G'
alias la='la -lAh'
## Git
alias g='git'
alias ga='git add .'
alias gcm='git commit -m'
## Beets
alias bconf="vi ~/.config/beets/config.yaml"
alias bart='beet list -f \$artist | grep -E ",|&|/| and |-"'
alias bgen='beet list -a -f \$genres | sort | uniq'
alias mproc='$HOME/Music/process.sh --delete $HOME/Music/Rips'
## Git


# Environment Variables
export EDITOR="vi -e"
export VISUAL="vi"

fpath+=~/.zfunc; autoload -Uz compinit; compinit

zstyle ':completion:*' menu select
