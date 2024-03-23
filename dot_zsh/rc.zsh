[ -f $HOME/.zsh/rc/brew.zsh ] && source $HOME/.zsh/rc/brew.zsh
[ -f $HOME/.zsh/rc/history.zsh ] && source $HOME/.zsh/rc/history.zsh
[ -f $HOME/.zsh/rc/path.zsh ] && source $HOME/.zsh/rc/path.zsh
[ -f $HOME/.zsh/rc/completion.zsh ] && source $HOME/.zsh/rc/completion.zsh
[ -f $HOME/.zsh/rc/correction.zsh ] && source $HOME/.zsh/rc/correction.zsh
[ -f $HOME/.zsh/rc/prompt.zsh ] && source $HOME/.zsh/rc/prompt.zsh

# emacs keybindings for terminal
bindkey -e

# options for less
export LESS="-FRSX"

# aliases to prevent my stupidity
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# we like ls output to be colorful
export CLICOLOR=1
export LSCOLORS="GxFxCxDxBxegedabagaced"
alias ls="ls --color=auto"

# nicer way to specify colors
autoload -U colors && colors

# helper functions
[ -f $HOME/.zsh/functions.zsh ] && source $HOME/.zsh/functions.zsh

# syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
