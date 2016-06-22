#!/bin/sh
# Installation script for luaenv and shell completions.
# Published under MIT license. Daniel Lima, 2016 <danielm@tinyhub.tk>
install -m755 -p luaenv /usr/bin/luaenv
install -m644 -D luaenv-completion.bash /etc/bash_completion.d/luaenv-completion.bash
install -m644 -D luaenv-completion.fish /etc/fish/completions/luaenv-completion.fish
