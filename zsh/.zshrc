export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="robbyrussell"
ZSH_THEME="eastwood"

plugins=(
  git
  fzf
  z
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#67665F'
bindkey '^[[Z' autosuggest-accept

alias bat="batcat"
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"
alias gs="git status"
alias gc="git commit"
alias ga="git add"
alias gp="git push"
alias gl="git --no-pager log --all --graph --oneline --parents"
alias gw="git switch"
alias ..="cd .."
alias ...="cd ../.."
alias p="python3"
alias po="poetry"
alias n="nvim"
alias c="clear"
alias k="kubectl"
alias tf="terraform"
alias lg="lazygit"
alias reload="source ~/.zshrc"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2025-07-13 03:50:08
export PATH="$PATH:/home/harvidston/.local/bin"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
