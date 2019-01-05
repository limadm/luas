#!/bin/bash
# Bash completions for luas
# Published under MIT license. Daniel Lima, 2016 <danielmariodelima@gmail.com>

_luas_available()
{
	grep -v "^luarocks" "$HOME/.cache/luas/index" | cut -f1
} &&
_luas_installed()
{
	if [ -d .luas ]; then
		/bin/ls -1 .luas
	else
		/bin/ls -1F ~/.cache/luas 2>/dev/null | grep '/$' | sed 's,/$,,'
	fi
} &&
_luas()
{
	local cur prev words cword
	_init_completion || return
	case $prev in
		use|remove)   COMPREPLY=($(compgen -W "$(_luas_installed)" -- "$cur")) ;;
		init|install) COMPREPLY=($(compgen -W "$(_luas_available)" -- "$cur")) ;;
		luas)         COMPREPLY=($(compgen -W 'help init install list remove use update' -- "$cur")) ;;
	esac
	return 0
} &&
complete -F _luas luas
