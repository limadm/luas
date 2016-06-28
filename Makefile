PREFIX ?= /usr

install:
	install -m755 -D luas "${PREFIX}/bin/luas"
	install -m644 -D luas-completion.bash "${PREFIX}/share/bash-completion/completions/luas"
	install -m644 -D luas-completion.fish "${PREFIX}/share/fish/vendor_completions.d/luas.fish"

uninstall:
	rm "${PREFIX}/bin/luas"
	rm "${PREFIX}/share/bash-completion/completions/luas"
	rm "${PREFIX}/share/fish/vendor_completions.d/luas.fish"
