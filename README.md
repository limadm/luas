Lua environment manager
=======================

An environment manager for Lua VMs in the spirit of rvm/rbenv, written from scratch,
minimal dependencies (base/devel, gcc and make), simpler commands, shell completions
and latest luarocks.
Installs packages to `./.luas` (or `~/.cache/luas` by default if the former does not
exist).

Installation:

	$ git clone github.com:limadm/luas
	$ cd luas && sudo make install

Usage:

	luas list                 list available versions, installed (-) and active (*)
	luas update               update versions list
	luas init    <version>    create .luas in current dir and install version
	luas install <version>    install lua version and latest luarocks
	luas remove  <version>    remove lua version and its luarocks tree
	luas use     <version>    setup environment to use version
	luas help                 print this message

Current versions:

	lua-5.3.5
	lua-5.2.4
	lua-5.1.5
	luajit-2.1.0-beta3
	luajit-2.1.0-beta2
	luajit-2.0.5
	luarocks-3.0.4

Check out the other options too!

- [DhavalKapil/luaver](https://github.com/DhavalKapil/luaver)
- [cehoffman/luaenv](https://github.com/cehoffman/luaenv)
- [mah0x211/lenv](https://github.com/mah0x211/lenv)

----

Published under MIT license. Daniel Lima, 2016 <danielmariodelima@gmail.com>
