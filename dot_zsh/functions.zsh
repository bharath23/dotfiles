function diff() {
	colordiff -u "$@" | less -FR
}
