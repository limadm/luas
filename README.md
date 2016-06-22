Lua environment manager
=======================

An environment manager for Lua VMs in the spirit of rvm/rbenv, written from scratch,
minimal dependencies (base/devel, gcc and make), simpler commands, shell completions
and latest luarocks (2.3.0).
Installs packages to `./.luas` (or `~/.luas` by default if the former does not exist).

Usage:

	luas list                   list versions
	luas update                 update version list
	luas init <version>         create ./.luas and install <version>
	luas install <version>      install lua <version> and latest luarocks
	luas remove <version>       remove lua <version> and its luarocks tree
	luas use <version>          setup environment to use <version>
	luas help                   print this message

Currently supported versions:

	lua-5.3.3
	lua-5.2.4
	lua-5.1.5
	luajit-2.1.0-beta2
	luajit-2.1.0-beta1
	luajit-2.0.4

Check out the other options too!

- [cehoffman/luaenv](https://github.com/cehoffman/luaenv) (he choose the original name first)
- [mah0x211/lenv](https://github.com/mah0x211/lenv)
- [DhavalKapil/luaver](https://github.com/DhavalKapil/luaver)

----

Published under MIT license. Daniel Lima, 2016 <danielm@tinyhub.tk>
