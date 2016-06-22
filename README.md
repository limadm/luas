Lua environment manager
=======================

An environment manager for Lua VMs in the spirit of rvm, with simple commands,
shell completions and latest luarocks (2.3.0).
Installs packages to ./.luaenv (or ~/.luaenv by default if the former does not exist).

Usage:

	luaenv list                   list versions
	luaenv update                 update version list
	luaenv init <version>         create ./.luaenv and install <version>
	luaenv install <version>      install lua <version> and latest luarocks
	luaenv remove <version>       remove lua <version> and its luarocks tree
	luaenv use <version>          setup environment to use <version>
	luaenv help                   print this message

Currently supported versions:

	lua-5.3.3
	lua-5.2.4
	lua-5.1.5
	luajit-2.1.0-beta2
	luajit-2.1.0-beta1
	luajit-2.0.4

Check out the other options too!

- [https://github.com/mah0x211/lenv](mah0x211/lenv)
- [https://github.com/DhavalKapil/luaver](DhavalKapil/luaver)

----

Published under MIT license. Daniel Lima, 2016 <danielm@tinyhub.tk>
