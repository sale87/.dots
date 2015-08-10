# Path to your oh-my-zsh installation.
export ZSH=/Users/sale/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git rails ruby)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

alias gs='git status'
alias gd='git diff'
alias ga='git add .'
alias gc='git commit -am'
alias go='git checkout '

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
