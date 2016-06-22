#!/bin/sh
# Installation script for luas and shell completions.
# Published under MIT license. Daniel Lima, 2016 <danielm@tinyhub.tk>
if [ ! "$PREFIX" ]; then
	PREFIX=/usr
fi
install -m755 -D luas "$PREFIX/bin/luas"
install -m644 -D luas-completion.bash "$PREFIX/share/bash-completion/completions/luas-completion.bash"
install -m644 -D luas-completion.fish "$PREFIX/share/fish/vendor_completions.d/luas-completion.fish"
