# load auto completion for different commands
# load zsh functions
if command -v brew &> /dev/null; then
	FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi

autoload -Uz compinit && compinit
autoload -Uz bashcompinit && bashcompinit

# case in-sensitive auto completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
