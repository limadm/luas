#!/bin/bash
# Bash completions for luaenv
# Published under MIT license. Daniel Lima, 2016 <danielm@tinyhub.tk>

_luaenv_available()
{
	cut -f1 "$HOME/.cache/luaenv/versions"
} &&
_luaenv_installed()
{
	if [ -d .luaenv ]; then
		/bin/ls -1 .luaenv
	else
		/bin/ls -1 ~/.luaenv 2>/dev/null
	fi
} &&
_luaenv()
{
	local cur prev words cword
	_init_completion || return
	case $prev in
		use|remove)   COMPREPLY=($(compgen -W "$(_luaenv_installed)" -- "$cur")) ;;
		init|install) COMPREPLY=($(compgen -W "$(_luaenv_available)" -- "$cur")) ;;
		luaenv)       COMPREPLY=($(compgen -W 'help init install list remove use update' -- "$cur")) ;;
	esac
	return 0
} &&
complete -F _luaenv luaenv
