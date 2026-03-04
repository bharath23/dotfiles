# initialize running /usr/libexec/path_helper
eval "$(/usr/libexec/path_helper)"

export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
[[ -d ${HOME}/go/bin ]] && export PATH="${HOME}/go/bin${PATH+:$PATH}";
[[ -d ${HOME}/bin ]] && export PATH="${HOME}/bin${PATH+:$PATH}";

export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}";

export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
