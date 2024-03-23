## History command configuration
HISTFILE="$HOME/.zsh/history"
HISTSIZE=5000
SAVEHIST=1000

setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicate first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore dpulicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data

# timestamp format yyyy-mm-dd
alias history="builtin fc -l  -i 1"
