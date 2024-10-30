# start PATH added by running /usr/libexec/path_helper
export PATH="/usr/local/bin${PATH+:$PATH}";
export PATH="/System/Cryptexes/App/usr/bin${PATH+:$PATH}";
export PATH="/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin${PATH+:$PATH}";
export PATH="/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin${PATH+:$PATH}";
export PATH="/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appinternal/bin${PATH+:$PATH}";
# end
export PATH="/Library/TeX/texbin${PATH+:$PATH}"
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
[[ -d ${HOME}/go/bin ]] && export PATH="${HOME}/go/bin${PATH+:$PATH}";
[[ -d ${HOME}/bin ]] && export PATH="${HOME}/bin${PATH+:$PATH}";
# start MANPATH added by running /usr/libexec/path_helper
export MANPATH="/usr/share/man:/usr/local/share/man${MANPATH+:$MANPATH}";
# end
export MANPATH="/Library/TeX/Distributions/.DefaultTeX/Contents/Man${MANPATH+:$MANPATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
