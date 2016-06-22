#!/bin/fish
# Fish completions for luaenv
# Published under MIT license. Daniel Lima, 2016 <danielm@tinyhub.tk>

function __fish_luaenv_complete
	set cmd (commandline -opc)
	switch $cmd[-1]
		case luaenv
			for opt in help init install list remove update use
				echo $opt
			end
		case init install
			cut -f1 "$HOME/.cache/luaenv/versions"
		case use remove
			if test -d .luaenv
				/bin/ls -1 .luaenv
			else
				/bin/ls -1 ~/.luaenv
			end
	end
end

complete -c luaenv -f -a "(__fish_luaenv_complete)"
