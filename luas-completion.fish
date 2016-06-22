#!/bin/fish
# Fish completions for luas
# Published under MIT license. Daniel Lima, 2016 <danielm@tinyhub.tk>

function __fish_luas_complete
	set cmd (commandline -opc)
	switch $cmd[-1]
		case luas
			for opt in help init install list remove update use
				echo $opt
			end
		case init install
			cut -f1 "$HOME/.cache/luas/versions"
		case use remove
			if test -d .luas
				/bin/ls -1 .luas
			else
				/bin/ls -1 ~/.luas
			end
	end
end

complete -c luas -f -a "(__fish_luas_complete)"
