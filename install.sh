#!/bin/sh
# Installation script for luas and shell completions.
# Published under MIT license. Daniel Lima, 2016 <danielm@tinyhub.tk>
install -m755 -p luas "$PREFIX/usr/bin/luas"
install -m644 -D luas-completion.bash "$PREFIX/etc/bash_completion.d/luas-completion.bash"
install -m644 -D luas-completion.fish "$PREFIX/etc/fish/completions/luas-completion.fish"
